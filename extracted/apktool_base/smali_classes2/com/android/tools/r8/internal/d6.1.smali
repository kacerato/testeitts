.class public final Lcom/android/tools/r8/internal/d6;
.super Lcom/android/tools/r8/internal/yJ;
.source "SourceFile"


# static fields
.field public static final a:Lcom/android/tools/r8/internal/tt0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "null"

    invoke-static {v0}, Lcom/android/tools/r8/internal/tt0;->d(Ljava/lang/String;)Lcom/android/tools/r8/internal/tt0;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/internal/d6;->a:Lcom/android/tools/r8/internal/tt0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/yJ;-><init>()V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/tt0;)Lcom/android/tools/r8/internal/c6;
    .locals 0

    if-nez p0, :cond_0

    .line 78
    sget-object p0, Lcom/android/tools/r8/internal/c6;->b:Lcom/android/tools/r8/internal/c6;

    return-object p0

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/tt0;->c()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    .line 80
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 81
    :pswitch_0
    sget-object p0, Lcom/android/tools/r8/internal/c6;->g:Lcom/android/tools/r8/internal/c6;

    return-object p0

    .line 82
    :pswitch_1
    sget-object p0, Lcom/android/tools/r8/internal/c6;->f:Lcom/android/tools/r8/internal/c6;

    return-object p0

    .line 83
    :pswitch_2
    sget-object p0, Lcom/android/tools/r8/internal/c6;->e:Lcom/android/tools/r8/internal/c6;

    return-object p0

    .line 84
    :pswitch_3
    sget-object p0, Lcom/android/tools/r8/internal/c6;->d:Lcom/android/tools/r8/internal/c6;

    return-object p0

    .line 85
    :pswitch_4
    sget-object p0, Lcom/android/tools/r8/internal/c6;->c:Lcom/android/tools/r8/internal/c6;

    return-object p0

    :pswitch_5
    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static b(Lcom/android/tools/r8/internal/H;)Lcom/android/tools/r8/internal/c6;
    .locals 4

    .line 21
    iget v0, p0, Lcom/android/tools/r8/internal/H;->a:I

    const/16 v1, 0xb3

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/16 v1, 0xb4

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc6

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc7

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    packed-switch v0, :pswitch_data_4

    .line 22
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 23
    :pswitch_0
    sget-object p0, Lcom/android/tools/r8/internal/c6;->c:Lcom/android/tools/r8/internal/c6;

    return-object p0

    .line 24
    :pswitch_1
    check-cast p0, Lcom/android/tools/r8/internal/qu0;

    iget-object p0, p0, Lcom/android/tools/r8/internal/qu0;->g:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/tools/r8/internal/tt0;->d(Ljava/lang/String;)Lcom/android/tools/r8/internal/tt0;

    move-result-object p0

    invoke-static {p0}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/tt0;)Lcom/android/tools/r8/internal/c6;

    move-result-object p0

    return-object p0

    :pswitch_2
    return-object v2

    .line 25
    :pswitch_3
    sget-object p0, Lcom/android/tools/r8/internal/c6;->c:Lcom/android/tools/r8/internal/c6;

    return-object p0

    .line 26
    :pswitch_4
    check-cast p0, Lcom/android/tools/r8/internal/qu0;

    iget-object p0, p0, Lcom/android/tools/r8/internal/qu0;->g:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/tools/r8/internal/tt0;->d(Ljava/lang/String;)Lcom/android/tools/r8/internal/tt0;

    move-result-object p0

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 28
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p0, v3, v0}, Lcom/android/tools/r8/internal/tt0;->a(Ljava/lang/String;II)Lcom/android/tools/r8/internal/tt0;

    move-result-object p0

    .line 29
    invoke-static {p0}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/tt0;)Lcom/android/tools/r8/internal/c6;

    move-result-object p0

    return-object p0

    .line 30
    :pswitch_5
    move-object v0, p0

    check-cast v0, Lcom/android/tools/r8/internal/OH;

    iget v0, v0, Lcom/android/tools/r8/internal/OH;->g:I

    const/4 v1, 0x2

    packed-switch v0, :pswitch_data_5

    .line 31
    new-instance v0, Lcom/android/tools/r8/internal/s2;

    const-string v1, "Invalid array type"

    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/internal/s2;-><init>(Lcom/android/tools/r8/internal/H;Ljava/lang/String;)V

    throw v0

    .line 32
    :pswitch_6
    const-string p0, "[J"

    .line 33
    invoke-static {p0, v3, v1}, Lcom/android/tools/r8/internal/tt0;->a(Ljava/lang/String;II)Lcom/android/tools/r8/internal/tt0;

    move-result-object p0

    .line 34
    invoke-static {p0}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/tt0;)Lcom/android/tools/r8/internal/c6;

    move-result-object p0

    return-object p0

    .line 35
    :pswitch_7
    const-string p0, "[I"

    .line 36
    invoke-static {p0, v3, v1}, Lcom/android/tools/r8/internal/tt0;->a(Ljava/lang/String;II)Lcom/android/tools/r8/internal/tt0;

    move-result-object p0

    .line 37
    invoke-static {p0}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/tt0;)Lcom/android/tools/r8/internal/c6;

    move-result-object p0

    return-object p0

    .line 38
    :pswitch_8
    const-string p0, "[S"

    .line 39
    invoke-static {p0, v3, v1}, Lcom/android/tools/r8/internal/tt0;->a(Ljava/lang/String;II)Lcom/android/tools/r8/internal/tt0;

    move-result-object p0

    .line 40
    invoke-static {p0}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/tt0;)Lcom/android/tools/r8/internal/c6;

    move-result-object p0

    return-object p0

    .line 41
    :pswitch_9
    const-string p0, "[B"

    .line 42
    invoke-static {p0, v3, v1}, Lcom/android/tools/r8/internal/tt0;->a(Ljava/lang/String;II)Lcom/android/tools/r8/internal/tt0;

    move-result-object p0

    .line 43
    invoke-static {p0}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/tt0;)Lcom/android/tools/r8/internal/c6;

    move-result-object p0

    return-object p0

    .line 44
    :pswitch_a
    const-string p0, "[D"

    .line 45
    invoke-static {p0, v3, v1}, Lcom/android/tools/r8/internal/tt0;->a(Ljava/lang/String;II)Lcom/android/tools/r8/internal/tt0;

    move-result-object p0

    .line 46
    invoke-static {p0}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/tt0;)Lcom/android/tools/r8/internal/c6;

    move-result-object p0

    return-object p0

    .line 47
    :pswitch_b
    const-string p0, "[F"

    .line 48
    invoke-static {p0, v3, v1}, Lcom/android/tools/r8/internal/tt0;->a(Ljava/lang/String;II)Lcom/android/tools/r8/internal/tt0;

    move-result-object p0

    .line 49
    invoke-static {p0}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/tt0;)Lcom/android/tools/r8/internal/c6;

    move-result-object p0

    return-object p0

    .line 50
    :pswitch_c
    const-string p0, "[C"

    .line 51
    invoke-static {p0, v3, v1}, Lcom/android/tools/r8/internal/tt0;->a(Ljava/lang/String;II)Lcom/android/tools/r8/internal/tt0;

    move-result-object p0

    .line 52
    invoke-static {p0}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/tt0;)Lcom/android/tools/r8/internal/c6;

    move-result-object p0

    return-object p0

    .line 53
    :pswitch_d
    const-string p0, "[Z"

    .line 54
    invoke-static {p0, v3, v1}, Lcom/android/tools/r8/internal/tt0;->a(Ljava/lang/String;II)Lcom/android/tools/r8/internal/tt0;

    move-result-object p0

    .line 55
    invoke-static {p0}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/tt0;)Lcom/android/tools/r8/internal/c6;

    move-result-object p0

    return-object p0

    .line 56
    :pswitch_e
    sget-object p0, Lcom/android/tools/r8/internal/c6;->f:Lcom/android/tools/r8/internal/c6;

    return-object p0

    .line 57
    :pswitch_f
    sget-object p0, Lcom/android/tools/r8/internal/c6;->d:Lcom/android/tools/r8/internal/c6;

    return-object p0

    .line 58
    :pswitch_10
    sget-object p0, Lcom/android/tools/r8/internal/c6;->e:Lcom/android/tools/r8/internal/c6;

    return-object p0

    .line 59
    :pswitch_11
    sget-object p0, Lcom/android/tools/r8/internal/c6;->c:Lcom/android/tools/r8/internal/c6;

    return-object p0

    :cond_0
    :pswitch_12
    return-object v2

    .line 60
    :cond_1
    check-cast p0, Lcom/android/tools/r8/internal/fw;

    iget-object p0, p0, Lcom/android/tools/r8/internal/fw;->i:Ljava/lang/String;

    .line 61
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p0, v3, v0}, Lcom/android/tools/r8/internal/tt0;->a(Ljava/lang/String;II)Lcom/android/tools/r8/internal/tt0;

    move-result-object p0

    .line 62
    invoke-static {p0}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/tt0;)Lcom/android/tools/r8/internal/c6;

    move-result-object p0

    return-object p0

    :cond_2
    :pswitch_13
    return-object v2

    :pswitch_data_0
    .packed-switch 0x74
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x84
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_11
        :pswitch_f
        :pswitch_e
        :pswitch_11
        :pswitch_10
        :pswitch_e
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_11
        :pswitch_11
        :pswitch_11
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x99
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xaa
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xbc
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_12
        :pswitch_12
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x4
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/H;)Lcom/android/tools/r8/internal/c6;
    .locals 4

    .line 116
    iget v0, p1, Lcom/android/tools/r8/internal/H;->a:I

    const/16 v1, 0xa8

    if-eq v0, v1, :cond_d

    const/16 v1, 0xb2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    const/16 v1, 0xbb

    if-eq v0, v1, :cond_b

    packed-switch v0, :pswitch_data_0

    .line 117
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 118
    :pswitch_0
    move-object v0, p1

    check-cast v0, Lcom/android/tools/r8/internal/AR;

    iget-object v0, v0, Lcom/android/tools/r8/internal/AR;->g:Ljava/lang/Object;

    .line 119
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 120
    sget-object p1, Lcom/android/tools/r8/internal/c6;->c:Lcom/android/tools/r8/internal/c6;

    return-object p1

    .line 121
    :cond_0
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_1

    .line 122
    sget-object p1, Lcom/android/tools/r8/internal/c6;->d:Lcom/android/tools/r8/internal/c6;

    return-object p1

    .line 123
    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 124
    sget-object p1, Lcom/android/tools/r8/internal/c6;->e:Lcom/android/tools/r8/internal/c6;

    return-object p1

    .line 125
    :cond_2
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_3

    .line 126
    sget-object p1, Lcom/android/tools/r8/internal/c6;->f:Lcom/android/tools/r8/internal/c6;

    return-object p1

    .line 127
    :cond_3
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 128
    const-string p1, "java/lang/String"

    invoke-static {p1}, Lcom/android/tools/r8/internal/tt0;->d(Ljava/lang/String;)Lcom/android/tools/r8/internal/tt0;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/tt0;)Lcom/android/tools/r8/internal/c6;

    move-result-object p1

    return-object p1

    .line 129
    :cond_4
    instance-of v1, v0, Lcom/android/tools/r8/internal/tt0;

    const-string v3, "Illegal LDC value "

    if-eqz v1, :cond_8

    .line 130
    move-object v1, v0

    check-cast v1, Lcom/android/tools/r8/internal/tt0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/tt0;->c()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_7

    const/16 v2, 0x9

    if-ne v1, v2, :cond_5

    goto :goto_0

    :cond_5
    const/16 v2, 0xb

    if-ne v1, v2, :cond_6

    .line 131
    const-string p1, "java/lang/invoke/MethodType"

    invoke-static {p1}, Lcom/android/tools/r8/internal/tt0;->d(Ljava/lang/String;)Lcom/android/tools/r8/internal/tt0;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/tt0;)Lcom/android/tools/r8/internal/c6;

    move-result-object p1

    return-object p1

    .line 132
    :cond_6
    new-instance v1, Lcom/android/tools/r8/internal/s2;

    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-direct {v1, p1, v0}, Lcom/android/tools/r8/internal/s2;-><init>(Lcom/android/tools/r8/internal/H;Ljava/lang/String;)V

    throw v1

    .line 135
    :cond_7
    :goto_0
    const-string p1, "java/lang/Class"

    invoke-static {p1}, Lcom/android/tools/r8/internal/tt0;->d(Ljava/lang/String;)Lcom/android/tools/r8/internal/tt0;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/tt0;)Lcom/android/tools/r8/internal/c6;

    move-result-object p1

    return-object p1

    .line 136
    :cond_8
    instance-of v1, v0, Lcom/android/tools/r8/internal/Qz;

    if-eqz v1, :cond_9

    .line 137
    const-string p1, "java/lang/invoke/MethodHandle"

    invoke-static {p1}, Lcom/android/tools/r8/internal/tt0;->d(Ljava/lang/String;)Lcom/android/tools/r8/internal/tt0;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/tt0;)Lcom/android/tools/r8/internal/c6;

    move-result-object p1

    return-object p1

    .line 138
    :cond_9
    instance-of v1, v0, Lcom/android/tools/r8/internal/wh;

    if-eqz v1, :cond_a

    .line 139
    check-cast v0, Lcom/android/tools/r8/internal/wh;

    .line 140
    iget-object p1, v0, Lcom/android/tools/r8/internal/wh;->b:Ljava/lang/String;

    .line 141
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p1, v2, v0}, Lcom/android/tools/r8/internal/tt0;->a(Ljava/lang/String;II)Lcom/android/tools/r8/internal/tt0;

    move-result-object p1

    .line 142
    invoke-static {p1}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/tt0;)Lcom/android/tools/r8/internal/c6;

    move-result-object p1

    return-object p1

    .line 143
    :cond_a
    new-instance v1, Lcom/android/tools/r8/internal/s2;

    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-direct {v1, p1, v0}, Lcom/android/tools/r8/internal/s2;-><init>(Lcom/android/tools/r8/internal/H;Ljava/lang/String;)V

    throw v1

    .line 146
    :pswitch_1
    sget-object p1, Lcom/android/tools/r8/internal/c6;->c:Lcom/android/tools/r8/internal/c6;

    return-object p1

    .line 147
    :pswitch_2
    sget-object p1, Lcom/android/tools/r8/internal/c6;->f:Lcom/android/tools/r8/internal/c6;

    return-object p1

    .line 148
    :pswitch_3
    sget-object p1, Lcom/android/tools/r8/internal/c6;->d:Lcom/android/tools/r8/internal/c6;

    return-object p1

    .line 149
    :pswitch_4
    sget-object p1, Lcom/android/tools/r8/internal/c6;->e:Lcom/android/tools/r8/internal/c6;

    return-object p1

    .line 150
    :pswitch_5
    sget-object p1, Lcom/android/tools/r8/internal/c6;->c:Lcom/android/tools/r8/internal/c6;

    return-object p1

    .line 151
    :pswitch_6
    sget-object p1, Lcom/android/tools/r8/internal/d6;->a:Lcom/android/tools/r8/internal/tt0;

    invoke-static {p1}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/tt0;)Lcom/android/tools/r8/internal/c6;

    move-result-object p1

    return-object p1

    .line 152
    :cond_b
    check-cast p1, Lcom/android/tools/r8/internal/qu0;

    iget-object p1, p1, Lcom/android/tools/r8/internal/qu0;->g:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/tools/r8/internal/tt0;->d(Ljava/lang/String;)Lcom/android/tools/r8/internal/tt0;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/tt0;)Lcom/android/tools/r8/internal/c6;

    move-result-object p1

    return-object p1

    .line 153
    :cond_c
    check-cast p1, Lcom/android/tools/r8/internal/fw;

    iget-object p1, p1, Lcom/android/tools/r8/internal/fw;->i:Ljava/lang/String;

    .line 154
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p1, v2, v0}, Lcom/android/tools/r8/internal/tt0;->a(Ljava/lang/String;II)Lcom/android/tools/r8/internal/tt0;

    move-result-object p1

    .line 155
    invoke-static {p1}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/tt0;)Lcom/android/tools/r8/internal/c6;

    move-result-object p1

    return-object p1

    .line 156
    :cond_d
    sget-object p1, Lcom/android/tools/r8/internal/c6;->h:Lcom/android/tools/r8/internal/c6;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/android/tools/r8/internal/H;Lcom/android/tools/r8/internal/ww0;)Lcom/android/tools/r8/internal/c6;
    .locals 3

    .line 66
    check-cast p2, Lcom/android/tools/r8/internal/c6;

    .line 67
    iget v0, p1, Lcom/android/tools/r8/internal/H;->a:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto :goto_1

    .line 68
    :pswitch_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/c6;->b()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/tools/r8/internal/c6;->h:Lcom/android/tools/r8/internal/c6;

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/c6;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 69
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/s2;

    const-string v2, "an object reference or a return address"

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/android/tools/r8/internal/s2;-><init>(Lcom/android/tools/r8/internal/H;Ljava/lang/String;Ljava/lang/Object;Lcom/android/tools/r8/internal/ww0;)V

    throw v0

    .line 70
    :pswitch_1
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/c6;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 71
    :cond_1
    new-instance v0, Lcom/android/tools/r8/internal/s2;

    const-string v2, "an object reference"

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/android/tools/r8/internal/s2;-><init>(Lcom/android/tools/r8/internal/H;Ljava/lang/String;Ljava/lang/Object;Lcom/android/tools/r8/internal/ww0;)V

    throw v0

    .line 72
    :pswitch_2
    sget-object v0, Lcom/android/tools/r8/internal/c6;->f:Lcom/android/tools/r8/internal/c6;

    goto :goto_0

    .line 73
    :pswitch_3
    sget-object v0, Lcom/android/tools/r8/internal/c6;->d:Lcom/android/tools/r8/internal/c6;

    goto :goto_0

    .line 74
    :pswitch_4
    sget-object v0, Lcom/android/tools/r8/internal/c6;->e:Lcom/android/tools/r8/internal/c6;

    goto :goto_0

    .line 75
    :pswitch_5
    sget-object v0, Lcom/android/tools/r8/internal/c6;->c:Lcom/android/tools/r8/internal/c6;

    .line 76
    :goto_0
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/c6;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    :goto_1
    return-object p2

    .line 77
    :cond_3
    new-instance v2, Lcom/android/tools/r8/internal/s2;

    invoke-direct {v2, p1, v1, v0, p2}, Lcom/android/tools/r8/internal/s2;-><init>(Lcom/android/tools/r8/internal/H;Ljava/lang/String;Ljava/lang/Object;Lcom/android/tools/r8/internal/ww0;)V

    throw v2

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x36
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/android/tools/r8/internal/H;Lcom/android/tools/r8/internal/ww0;Lcom/android/tools/r8/internal/ww0;)Lcom/android/tools/r8/internal/c6;
    .locals 5

    .line 1
    check-cast p2, Lcom/android/tools/r8/internal/c6;

    check-cast p3, Lcom/android/tools/r8/internal/c6;

    .line 2
    iget v0, p1, Lcom/android/tools/r8/internal/H;->a:I

    const/4 v1, 0x0

    const/16 v2, 0xb5

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    packed-switch v0, :pswitch_data_4

    .line 3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 4
    :pswitch_0
    sget-object v0, Lcom/android/tools/r8/internal/c6;->g:Lcom/android/tools/r8/internal/c6;

    :goto_0
    move-object v1, v0

    goto/16 :goto_2

    .line 5
    :pswitch_1
    sget-object v0, Lcom/android/tools/r8/internal/c6;->e:Lcom/android/tools/r8/internal/c6;

    .line 6
    sget-object v1, Lcom/android/tools/r8/internal/c6;->c:Lcom/android/tools/r8/internal/c6;

    goto/16 :goto_2

    .line 7
    :pswitch_2
    sget-object v0, Lcom/android/tools/r8/internal/c6;->f:Lcom/android/tools/r8/internal/c6;

    goto :goto_0

    .line 8
    :pswitch_3
    sget-object v0, Lcom/android/tools/r8/internal/c6;->d:Lcom/android/tools/r8/internal/c6;

    goto :goto_0

    .line 9
    :pswitch_4
    sget-object v0, Lcom/android/tools/r8/internal/c6;->e:Lcom/android/tools/r8/internal/c6;

    goto :goto_0

    .line 10
    :pswitch_5
    sget-object v0, Lcom/android/tools/r8/internal/c6;->c:Lcom/android/tools/r8/internal/c6;

    goto :goto_0

    .line 11
    :pswitch_6
    const-string v0, "[S"

    .line 12
    invoke-static {v0, v1, v3}, Lcom/android/tools/r8/internal/tt0;->a(Ljava/lang/String;II)Lcom/android/tools/r8/internal/tt0;

    move-result-object v0

    .line 13
    invoke-static {v0}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/tt0;)Lcom/android/tools/r8/internal/c6;

    move-result-object v0

    .line 14
    sget-object v1, Lcom/android/tools/r8/internal/c6;->c:Lcom/android/tools/r8/internal/c6;

    goto/16 :goto_2

    .line 15
    :pswitch_7
    const-string v0, "[C"

    .line 16
    invoke-static {v0, v1, v3}, Lcom/android/tools/r8/internal/tt0;->a(Ljava/lang/String;II)Lcom/android/tools/r8/internal/tt0;

    move-result-object v0

    .line 17
    invoke-static {v0}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/tt0;)Lcom/android/tools/r8/internal/c6;

    move-result-object v0

    .line 18
    sget-object v1, Lcom/android/tools/r8/internal/c6;->c:Lcom/android/tools/r8/internal/c6;

    goto/16 :goto_2

    .line 19
    :pswitch_8
    const-string v0, "[Z"

    invoke-static {v0, v1, v3}, Lcom/android/tools/r8/internal/tt0;->a(Ljava/lang/String;II)Lcom/android/tools/r8/internal/tt0;

    move-result-object v4

    .line 20
    invoke-static {v4}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/tt0;)Lcom/android/tools/r8/internal/c6;

    move-result-object v4

    .line 21
    invoke-virtual {p2, v4}, Lcom/android/tools/r8/internal/c6;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 22
    invoke-static {v0, v1, v3}, Lcom/android/tools/r8/internal/tt0;->a(Ljava/lang/String;II)Lcom/android/tools/r8/internal/tt0;

    move-result-object v0

    .line 23
    invoke-static {v0}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/tt0;)Lcom/android/tools/r8/internal/c6;

    move-result-object v0

    goto :goto_1

    .line 24
    :cond_0
    const-string v0, "[B"

    .line 25
    invoke-static {v0, v1, v3}, Lcom/android/tools/r8/internal/tt0;->a(Ljava/lang/String;II)Lcom/android/tools/r8/internal/tt0;

    move-result-object v0

    .line 26
    invoke-static {v0}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/tt0;)Lcom/android/tools/r8/internal/c6;

    move-result-object v0

    .line 27
    :goto_1
    sget-object v1, Lcom/android/tools/r8/internal/c6;->c:Lcom/android/tools/r8/internal/c6;

    goto :goto_2

    .line 28
    :pswitch_9
    const-string v0, "[Ljava/lang/Object;"

    const/16 v3, 0x13

    .line 29
    invoke-static {v0, v1, v3}, Lcom/android/tools/r8/internal/tt0;->a(Ljava/lang/String;II)Lcom/android/tools/r8/internal/tt0;

    move-result-object v0

    .line 30
    invoke-static {v0}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/tt0;)Lcom/android/tools/r8/internal/c6;

    move-result-object v0

    .line 31
    sget-object v1, Lcom/android/tools/r8/internal/c6;->c:Lcom/android/tools/r8/internal/c6;

    goto :goto_2

    .line 32
    :pswitch_a
    const-string v0, "[D"

    .line 33
    invoke-static {v0, v1, v3}, Lcom/android/tools/r8/internal/tt0;->a(Ljava/lang/String;II)Lcom/android/tools/r8/internal/tt0;

    move-result-object v0

    .line 34
    invoke-static {v0}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/tt0;)Lcom/android/tools/r8/internal/c6;

    move-result-object v0

    .line 35
    sget-object v1, Lcom/android/tools/r8/internal/c6;->c:Lcom/android/tools/r8/internal/c6;

    goto :goto_2

    .line 36
    :pswitch_b
    const-string v0, "[F"

    .line 37
    invoke-static {v0, v1, v3}, Lcom/android/tools/r8/internal/tt0;->a(Ljava/lang/String;II)Lcom/android/tools/r8/internal/tt0;

    move-result-object v0

    .line 38
    invoke-static {v0}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/tt0;)Lcom/android/tools/r8/internal/c6;

    move-result-object v0

    .line 39
    sget-object v1, Lcom/android/tools/r8/internal/c6;->c:Lcom/android/tools/r8/internal/c6;

    goto :goto_2

    .line 40
    :pswitch_c
    const-string v0, "[J"

    .line 41
    invoke-static {v0, v1, v3}, Lcom/android/tools/r8/internal/tt0;->a(Ljava/lang/String;II)Lcom/android/tools/r8/internal/tt0;

    move-result-object v0

    .line 42
    invoke-static {v0}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/tt0;)Lcom/android/tools/r8/internal/c6;

    move-result-object v0

    .line 43
    sget-object v1, Lcom/android/tools/r8/internal/c6;->c:Lcom/android/tools/r8/internal/c6;

    goto :goto_2

    .line 44
    :pswitch_d
    const-string v0, "[I"

    .line 45
    invoke-static {v0, v1, v3}, Lcom/android/tools/r8/internal/tt0;->a(Ljava/lang/String;II)Lcom/android/tools/r8/internal/tt0;

    move-result-object v0

    .line 46
    invoke-static {v0}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/tt0;)Lcom/android/tools/r8/internal/c6;

    move-result-object v0

    .line 47
    sget-object v1, Lcom/android/tools/r8/internal/c6;->c:Lcom/android/tools/r8/internal/c6;

    goto :goto_2

    .line 48
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/tools/r8/internal/fw;

    .line 49
    iget-object v3, v0, Lcom/android/tools/r8/internal/fw;->g:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/tools/r8/internal/tt0;->d(Ljava/lang/String;)Lcom/android/tools/r8/internal/tt0;

    move-result-object v3

    invoke-static {v3}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/tt0;)Lcom/android/tools/r8/internal/c6;

    move-result-object v3

    .line 50
    iget-object v0, v0, Lcom/android/tools/r8/internal/fw;->i:Ljava/lang/String;

    .line 51
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v0, v1, v4}, Lcom/android/tools/r8/internal/tt0;->a(Ljava/lang/String;II)Lcom/android/tools/r8/internal/tt0;

    move-result-object v0

    .line 52
    invoke-static {v0}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/tt0;)Lcom/android/tools/r8/internal/c6;

    move-result-object v0

    move-object v1, v0

    move-object v0, v3

    .line 53
    :goto_2
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/c6;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 54
    invoke-virtual {p3, v1}, Lcom/android/tools/r8/internal/c6;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 55
    iget p1, p1, Lcom/android/tools/r8/internal/H;->a:I

    const/16 p2, 0x32

    if-ne p1, p2, :cond_2

    .line 56
    sget-object p1, Lcom/android/tools/r8/internal/c6;->g:Lcom/android/tools/r8/internal/c6;

    return-object p1

    :cond_2
    if-eq p1, v2, :cond_3

    packed-switch p1, :pswitch_data_5

    packed-switch p1, :pswitch_data_6

    packed-switch p1, :pswitch_data_7

    packed-switch p1, :pswitch_data_8

    packed-switch p1, :pswitch_data_9

    .line 57
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 58
    :pswitch_e
    sget-object p1, Lcom/android/tools/r8/internal/c6;->c:Lcom/android/tools/r8/internal/c6;

    return-object p1

    .line 59
    :pswitch_f
    sget-object p1, Lcom/android/tools/r8/internal/c6;->g:Lcom/android/tools/r8/internal/c6;

    return-object p1

    .line 60
    :pswitch_10
    sget-object p1, Lcom/android/tools/r8/internal/c6;->f:Lcom/android/tools/r8/internal/c6;

    return-object p1

    .line 61
    :pswitch_11
    sget-object p1, Lcom/android/tools/r8/internal/c6;->d:Lcom/android/tools/r8/internal/c6;

    return-object p1

    .line 62
    :pswitch_12
    sget-object p1, Lcom/android/tools/r8/internal/c6;->e:Lcom/android/tools/r8/internal/c6;

    return-object p1

    .line 63
    :pswitch_13
    sget-object p1, Lcom/android/tools/r8/internal/c6;->c:Lcom/android/tools/r8/internal/c6;

    return-object p1

    :cond_3
    :pswitch_14
    const/4 p1, 0x0

    return-object p1

    .line 64
    :cond_4
    new-instance p2, Lcom/android/tools/r8/internal/s2;

    const-string v0, "Second argument"

    invoke-direct {p2, p1, v0, v1, p3}, Lcom/android/tools/r8/internal/s2;-><init>(Lcom/android/tools/r8/internal/H;Ljava/lang/String;Ljava/lang/Object;Lcom/android/tools/r8/internal/ww0;)V

    throw p2

    .line 65
    :cond_5
    new-instance p3, Lcom/android/tools/r8/internal/s2;

    const-string v1, "First argument"

    invoke-direct {p3, p1, v1, v0, p2}, Lcom/android/tools/r8/internal/s2;-><init>(Lcom/android/tools/r8/internal/H;Ljava/lang/String;Ljava/lang/Object;Lcom/android/tools/r8/internal/ww0;)V

    throw p3

    :pswitch_data_0
    .packed-switch 0x2e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x60
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x78
        :pswitch_5
        :pswitch_1
        :pswitch_5
        :pswitch_1
        :pswitch_5
        :pswitch_1
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x94
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x9f
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x2e
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_13
        :pswitch_13
        :pswitch_13
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x60
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x78
        :pswitch_13
        :pswitch_12
        :pswitch_13
        :pswitch_12
        :pswitch_13
        :pswitch_12
        :pswitch_13
        :pswitch_12
        :pswitch_13
        :pswitch_12
        :pswitch_13
        :pswitch_12
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x94
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x9f
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
    .end packed-switch
.end method

.method public final a(Lcom/android/tools/r8/internal/H;Ljava/util/ArrayList;)Lcom/android/tools/r8/internal/c6;
    .locals 9

    .line 86
    iget v0, p1, Lcom/android/tools/r8/internal/H;->a:I

    const/16 v1, 0xba

    const/4 v2, 0x0

    const/16 v3, 0xc5

    if-ne v0, v3, :cond_1

    .line 87
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v4, v2

    :goto_0
    if-ge v4, v0, :cond_6

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/tools/r8/internal/c6;

    .line 88
    sget-object v6, Lcom/android/tools/r8/internal/c6;->c:Lcom/android/tools/r8/internal/c6;

    invoke-virtual {v6, v5}, Lcom/android/tools/r8/internal/c6;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    new-instance p2, Lcom/android/tools/r8/internal/s2;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0, v6, v5}, Lcom/android/tools/r8/internal/s2;-><init>(Lcom/android/tools/r8/internal/H;Ljava/lang/String;Ljava/lang/Object;Lcom/android/tools/r8/internal/ww0;)V

    throw p2

    :cond_1
    const/16 v4, 0xb8

    if-eq v0, v4, :cond_3

    if-eq v0, v1, :cond_3

    .line 90
    move-object v4, p1

    check-cast v4, Lcom/android/tools/r8/internal/KW;

    iget-object v4, v4, Lcom/android/tools/r8/internal/KW;->g:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/tools/r8/internal/tt0;->d(Ljava/lang/String;)Lcom/android/tools/r8/internal/tt0;

    move-result-object v4

    .line 91
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/c6;

    invoke-static {v4}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/tt0;)Lcom/android/tools/r8/internal/c6;

    move-result-object v6

    .line 92
    invoke-virtual {v5, v6}, Lcom/android/tools/r8/internal/c6;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    .line 93
    :cond_2
    new-instance v0, Lcom/android/tools/r8/internal/s2;

    invoke-static {v4}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/tt0;)Lcom/android/tools/r8/internal/c6;

    move-result-object v1

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/ww0;

    const-string v2, "Method owner"

    invoke-direct {v0, p1, v2, v1, p2}, Lcom/android/tools/r8/internal/s2;-><init>(Lcom/android/tools/r8/internal/H;Ljava/lang/String;Ljava/lang/Object;Lcom/android/tools/r8/internal/ww0;)V

    throw v0

    :cond_3
    move v4, v2

    :goto_1
    if-ne v0, v1, :cond_4

    .line 94
    move-object v0, p1

    check-cast v0, Lcom/android/tools/r8/internal/RJ;

    iget-object v0, v0, Lcom/android/tools/r8/internal/RJ;->h:Ljava/lang/String;

    goto :goto_2

    .line 95
    :cond_4
    move-object v0, p1

    check-cast v0, Lcom/android/tools/r8/internal/KW;

    iget-object v0, v0, Lcom/android/tools/r8/internal/KW;->i:Ljava/lang/String;

    .line 96
    :goto_2
    invoke-static {v0}, Lcom/android/tools/r8/internal/tt0;->b(Ljava/lang/String;)[Lcom/android/tools/r8/internal/tt0;

    move-result-object v0

    move v5, v2

    .line 97
    :goto_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_6

    add-int/lit8 v6, v5, 0x1

    .line 98
    aget-object v5, v0, v5

    invoke-static {v5}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/tt0;)Lcom/android/tools/r8/internal/c6;

    move-result-object v5

    add-int/lit8 v7, v4, 0x1

    .line 99
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/c6;

    .line 100
    invoke-virtual {v4, v5}, Lcom/android/tools/r8/internal/c6;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v5, v6

    move v4, v7

    goto :goto_3

    .line 101
    :cond_5
    new-instance p2, Lcom/android/tools/r8/internal/s2;

    .line 102
    const-string v0, "Argument "

    invoke-static {v6, v0}, Lcom/android/tools/r8/internal/T60;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-direct {p2, p1, v0, v5, v4}, Lcom/android/tools/r8/internal/s2;-><init>(Lcom/android/tools/r8/internal/H;Ljava/lang/String;Ljava/lang/Object;Lcom/android/tools/r8/internal/ww0;)V

    throw p2

    .line 104
    :cond_6
    iget p2, p1, Lcom/android/tools/r8/internal/H;->a:I

    if-ne p2, v3, :cond_7

    .line 105
    check-cast p1, Lcom/android/tools/r8/internal/hY;

    iget-object p1, p1, Lcom/android/tools/r8/internal/hY;->g:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    invoke-static {p1, v2, p2}, Lcom/android/tools/r8/internal/tt0;->a(Ljava/lang/String;II)Lcom/android/tools/r8/internal/tt0;

    move-result-object p1

    .line 107
    invoke-static {p1}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/tt0;)Lcom/android/tools/r8/internal/c6;

    move-result-object p1

    return-object p1

    :cond_7
    if-ne p2, v1, :cond_8

    .line 108
    check-cast p1, Lcom/android/tools/r8/internal/RJ;

    iget-object p1, p1, Lcom/android/tools/r8/internal/RJ;->h:Ljava/lang/String;

    .line 109
    invoke-static {p1}, Lcom/android/tools/r8/internal/tt0;->e(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 110
    invoke-static {p1, p2, v0}, Lcom/android/tools/r8/internal/tt0;->a(Ljava/lang/String;II)Lcom/android/tools/r8/internal/tt0;

    move-result-object p1

    .line 111
    invoke-static {p1}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/tt0;)Lcom/android/tools/r8/internal/c6;

    move-result-object p1

    return-object p1

    .line 112
    :cond_8
    check-cast p1, Lcom/android/tools/r8/internal/KW;

    iget-object p1, p1, Lcom/android/tools/r8/internal/KW;->i:Ljava/lang/String;

    .line 113
    invoke-static {p1}, Lcom/android/tools/r8/internal/tt0;->e(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 114
    invoke-static {p1, p2, v0}, Lcom/android/tools/r8/internal/tt0;->a(Ljava/lang/String;II)Lcom/android/tools/r8/internal/tt0;

    move-result-object p1

    .line 115
    invoke-static {p1}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/tt0;)Lcom/android/tools/r8/internal/c6;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/internal/H;Lcom/android/tools/r8/internal/ww0;)Lcom/android/tools/r8/internal/c6;
    .locals 4

    .line 1
    check-cast p2, Lcom/android/tools/r8/internal/c6;

    .line 2
    iget v0, p1, Lcom/android/tools/r8/internal/H;->a:I

    const/16 v1, 0xb3

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_3

    const/16 v1, 0xc6

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc7

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    packed-switch v0, :pswitch_data_4

    .line 3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 4
    :pswitch_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/c6;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {p1}, Lcom/android/tools/r8/internal/d6;->b(Lcom/android/tools/r8/internal/H;)Lcom/android/tools/r8/internal/c6;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/s2;

    const-string v1, "an array reference"

    invoke-direct {v0, p1, v2, v1, p2}, Lcom/android/tools/r8/internal/s2;-><init>(Lcom/android/tools/r8/internal/H;Ljava/lang/String;Ljava/lang/Object;Lcom/android/tools/r8/internal/ww0;)V

    throw v0

    .line 7
    :pswitch_1
    sget-object v0, Lcom/android/tools/r8/internal/c6;->f:Lcom/android/tools/r8/internal/c6;

    goto :goto_0

    .line 8
    :pswitch_2
    sget-object v0, Lcom/android/tools/r8/internal/c6;->d:Lcom/android/tools/r8/internal/c6;

    goto :goto_0

    .line 9
    :pswitch_3
    sget-object v0, Lcom/android/tools/r8/internal/c6;->e:Lcom/android/tools/r8/internal/c6;

    goto :goto_0

    .line 10
    :pswitch_4
    sget-object v0, Lcom/android/tools/r8/internal/c6;->c:Lcom/android/tools/r8/internal/c6;

    goto :goto_0

    .line 11
    :cond_1
    :pswitch_5
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/c6;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    invoke-static {p1}, Lcom/android/tools/r8/internal/d6;->b(Lcom/android/tools/r8/internal/H;)Lcom/android/tools/r8/internal/c6;

    move-result-object p1

    return-object p1

    .line 13
    :cond_2
    new-instance v0, Lcom/android/tools/r8/internal/s2;

    const-string v1, "an object reference"

    invoke-direct {v0, p1, v2, v1, p2}, Lcom/android/tools/r8/internal/s2;-><init>(Lcom/android/tools/r8/internal/H;Ljava/lang/String;Ljava/lang/Object;Lcom/android/tools/r8/internal/ww0;)V

    throw v0

    .line 14
    :cond_3
    move-object v0, p1

    check-cast v0, Lcom/android/tools/r8/internal/fw;

    iget-object v0, v0, Lcom/android/tools/r8/internal/fw;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/tools/r8/internal/tt0;->d(Ljava/lang/String;)Lcom/android/tools/r8/internal/tt0;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/tt0;)Lcom/android/tools/r8/internal/c6;

    move-result-object v0

    goto :goto_0

    .line 15
    :cond_4
    move-object v0, p1

    check-cast v0, Lcom/android/tools/r8/internal/fw;

    iget-object v0, v0, Lcom/android/tools/r8/internal/fw;->i:Ljava/lang/String;

    .line 16
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1}, Lcom/android/tools/r8/internal/tt0;->a(Ljava/lang/String;II)Lcom/android/tools/r8/internal/tt0;

    move-result-object v0

    .line 17
    invoke-static {v0}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/tt0;)Lcom/android/tools/r8/internal/c6;

    move-result-object v0

    .line 18
    :goto_0
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/c6;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 19
    invoke-static {p1}, Lcom/android/tools/r8/internal/d6;->b(Lcom/android/tools/r8/internal/H;)Lcom/android/tools/r8/internal/c6;

    move-result-object p1

    return-object p1

    .line 20
    :cond_5
    new-instance v1, Lcom/android/tools/r8/internal/s2;

    invoke-direct {v1, p1, v2, v0, p2}, Lcom/android/tools/r8/internal/s2;-><init>(Lcom/android/tools/r8/internal/H;Ljava/lang/String;Ljava/lang/Object;Lcom/android/tools/r8/internal/ww0;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x74
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x84
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x99
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xaa
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xbc
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method
