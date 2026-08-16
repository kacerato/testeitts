.class public final Lcom/android/tools/r8/internal/fy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/android/tools/r8/internal/c6;

.field public b:[Lcom/android/tools/r8/internal/ww0;

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p2, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    add-int/2addr v0, p1

    new-array v0, v0, [Lcom/android/tools/r8/internal/ww0;

    iput-object v0, p0, Lcom/android/tools/r8/internal/fy;->b:[Lcom/android/tools/r8/internal/ww0;

    iput p1, p0, Lcom/android/tools/r8/internal/fy;->c:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/tools/r8/internal/fy;->d:I

    if-ltz p2, :cond_1

    goto :goto_1

    :cond_1
    const/high16 p2, 0x10000

    :goto_1
    iput p2, p0, Lcom/android/tools/r8/internal/fy;->e:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/fy;)Lcom/android/tools/r8/internal/fy;
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/android/tools/r8/internal/fy;->a:Lcom/android/tools/r8/internal/c6;

    iput-object v0, p0, Lcom/android/tools/r8/internal/fy;->a:Lcom/android/tools/r8/internal/c6;

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/fy;->b:[Lcom/android/tools/r8/internal/ww0;

    array-length v1, v0

    iget-object v2, p1, Lcom/android/tools/r8/internal/fy;->b:[Lcom/android/tools/r8/internal/ww0;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 3
    invoke-virtual {v2}, [Lcom/android/tools/r8/internal/ww0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/tools/r8/internal/ww0;

    iput-object v0, p0, Lcom/android/tools/r8/internal/fy;->b:[Lcom/android/tools/r8/internal/ww0;

    goto :goto_0

    .line 4
    :cond_0
    array-length v1, v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    :goto_0
    iget v0, p1, Lcom/android/tools/r8/internal/fy;->c:I

    iput v0, p0, Lcom/android/tools/r8/internal/fy;->c:I

    .line 6
    iget v0, p1, Lcom/android/tools/r8/internal/fy;->d:I

    iput v0, p0, Lcom/android/tools/r8/internal/fy;->d:I

    .line 7
    iget p1, p1, Lcom/android/tools/r8/internal/fy;->e:I

    iput p1, p0, Lcom/android/tools/r8/internal/fy;->e:I

    return-object p0
.end method

.method public final a()Lcom/android/tools/r8/internal/ww0;
    .locals 3

    .line 193
    iget v0, p0, Lcom/android/tools/r8/internal/fy;->d:I

    if-eqz v0, :cond_0

    .line 194
    iget-object v1, p0, Lcom/android/tools/r8/internal/fy;->b:[Lcom/android/tools/r8/internal/ww0;

    iget v2, p0, Lcom/android/tools/r8/internal/fy;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/tools/r8/internal/fy;->d:I

    add-int/2addr v2, v0

    aget-object v0, v1, v2

    return-object v0

    .line 195
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Cannot pop operand off an empty stack."

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(I)Lcom/android/tools/r8/internal/ww0;
    .locals 2

    .line 183
    iget v0, p0, Lcom/android/tools/r8/internal/fy;->c:I

    if-ge p1, v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/tools/r8/internal/fy;->b:[Lcom/android/tools/r8/internal/ww0;

    aget-object p1, v0, p1

    return-object p1

    .line 185
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 186
    const-string v1, "Trying to get an inexistant local variable "

    invoke-static {p1, v1}, Lcom/android/tools/r8/internal/T60;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 187
    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(ILcom/android/tools/r8/internal/c6;)V
    .locals 1

    .line 188
    iget v0, p0, Lcom/android/tools/r8/internal/fy;->c:I

    if-ge p1, v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/tools/r8/internal/fy;->b:[Lcom/android/tools/r8/internal/ww0;

    aput-object p2, v0, p1

    return-void

    .line 190
    :cond_0
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    .line 191
    const-string v0, "Trying to set an inexistant local variable "

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/T60;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 192
    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final a(Lcom/android/tools/r8/internal/H;Lcom/android/tools/r8/internal/d6;)V
    .locals 6

    .line 8
    iget v0, p1, Lcom/android/tools/r8/internal/H;->a:I

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    const/4 v1, 0x2

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_2

    const-string v3, "Incompatible return type"

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_3

    packed-switch v0, :pswitch_data_4

    .line 9
    new-instance p2, Lcom/android/tools/r8/internal/s2;

    .line 10
    iget v0, p1, Lcom/android/tools/r8/internal/H;->a:I

    .line 11
    const-string v1, "Illegal opcode "

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/T60;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-direct {p2, p1, v0}, Lcom/android/tools/r8/internal/s2;-><init>(Lcom/android/tools/r8/internal/H;Ljava/lang/String;)V

    throw p2

    .line 13
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fy;->a()Lcom/android/tools/r8/internal/ww0;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/android/tools/r8/internal/d6;->b(Lcom/android/tools/r8/internal/H;Lcom/android/tools/r8/internal/ww0;)Lcom/android/tools/r8/internal/c6;

    return-void

    .line 14
    :pswitch_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    move-object v1, p1

    check-cast v1, Lcom/android/tools/r8/internal/hY;

    iget v1, v1, Lcom/android/tools/r8/internal/hY;->h:I

    :goto_0
    if-lez v1, :cond_0

    .line 16
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fy;->a()Lcom/android/tools/r8/internal/ww0;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p2, p1, v0}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/H;Ljava/util/ArrayList;)Lcom/android/tools/r8/internal/c6;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fy;->a(Lcom/android/tools/r8/internal/c6;)V

    return-void

    .line 18
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fy;->a()Lcom/android/tools/r8/internal/ww0;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/android/tools/r8/internal/d6;->b(Lcom/android/tools/r8/internal/H;Lcom/android/tools/r8/internal/ww0;)Lcom/android/tools/r8/internal/c6;

    return-void

    .line 19
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fy;->a()Lcom/android/tools/r8/internal/ww0;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/android/tools/r8/internal/d6;->b(Lcom/android/tools/r8/internal/H;Lcom/android/tools/r8/internal/ww0;)Lcom/android/tools/r8/internal/c6;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fy;->a(Lcom/android/tools/r8/internal/c6;)V

    return-void

    .line 20
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fy;->a()Lcom/android/tools/r8/internal/ww0;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/android/tools/r8/internal/d6;->b(Lcom/android/tools/r8/internal/H;Lcom/android/tools/r8/internal/ww0;)Lcom/android/tools/r8/internal/c6;

    return-void

    .line 21
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fy;->a()Lcom/android/tools/r8/internal/ww0;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/android/tools/r8/internal/d6;->b(Lcom/android/tools/r8/internal/H;Lcom/android/tools/r8/internal/ww0;)Lcom/android/tools/r8/internal/c6;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fy;->a(Lcom/android/tools/r8/internal/c6;)V

    return-void

    .line 22
    :pswitch_6
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/H;)Lcom/android/tools/r8/internal/c6;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fy;->a(Lcom/android/tools/r8/internal/c6;)V

    return-void

    .line 23
    :pswitch_7
    move-object v0, p1

    check-cast v0, Lcom/android/tools/r8/internal/RJ;

    iget-object v0, v0, Lcom/android/tools/r8/internal/RJ;->h:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/tools/r8/internal/fy;->a(Lcom/android/tools/r8/internal/H;Ljava/lang/String;Lcom/android/tools/r8/internal/d6;)V

    return-void

    .line 24
    :pswitch_8
    move-object v0, p1

    check-cast v0, Lcom/android/tools/r8/internal/KW;

    iget-object v0, v0, Lcom/android/tools/r8/internal/KW;->i:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/tools/r8/internal/fy;->a(Lcom/android/tools/r8/internal/H;Ljava/lang/String;Lcom/android/tools/r8/internal/d6;)V

    return-void

    .line 25
    :pswitch_9
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fy;->a()Lcom/android/tools/r8/internal/ww0;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/android/tools/r8/internal/d6;->b(Lcom/android/tools/r8/internal/H;Lcom/android/tools/r8/internal/ww0;)Lcom/android/tools/r8/internal/c6;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fy;->a(Lcom/android/tools/r8/internal/c6;)V

    return-void

    .line 26
    :pswitch_a
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fy;->a()Lcom/android/tools/r8/internal/ww0;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/android/tools/r8/internal/d6;->b(Lcom/android/tools/r8/internal/H;Lcom/android/tools/r8/internal/ww0;)Lcom/android/tools/r8/internal/c6;

    return-void

    .line 27
    :pswitch_b
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/H;)Lcom/android/tools/r8/internal/c6;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fy;->a(Lcom/android/tools/r8/internal/c6;)V

    return-void

    .line 28
    :pswitch_c
    iget-object p2, p0, Lcom/android/tools/r8/internal/fy;->a:Lcom/android/tools/r8/internal/c6;

    if-nez p2, :cond_1

    goto/16 :goto_3

    .line 29
    :cond_1
    new-instance p2, Lcom/android/tools/r8/internal/s2;

    invoke-direct {p2, p1, v3}, Lcom/android/tools/r8/internal/s2;-><init>(Lcom/android/tools/r8/internal/H;Ljava/lang/String;)V

    throw p2

    .line 30
    :pswitch_d
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fy;->a()Lcom/android/tools/r8/internal/ww0;

    move-result-object v0

    .line 31
    invoke-virtual {p2, p1, v0}, Lcom/android/tools/r8/internal/d6;->b(Lcom/android/tools/r8/internal/H;Lcom/android/tools/r8/internal/ww0;)Lcom/android/tools/r8/internal/c6;

    .line 32
    iget-object p2, p0, Lcom/android/tools/r8/internal/fy;->a:Lcom/android/tools/r8/internal/c6;

    .line 33
    check-cast v0, Lcom/android/tools/r8/internal/c6;

    .line 34
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/c6;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_3

    .line 35
    :cond_2
    new-instance v1, Lcom/android/tools/r8/internal/s2;

    invoke-direct {v1, p1, v3, p2, v0}, Lcom/android/tools/r8/internal/s2;-><init>(Lcom/android/tools/r8/internal/H;Ljava/lang/String;Ljava/lang/Object;Lcom/android/tools/r8/internal/ww0;)V

    throw v1

    .line 36
    :pswitch_e
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fy;->a()Lcom/android/tools/r8/internal/ww0;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/android/tools/r8/internal/d6;->b(Lcom/android/tools/r8/internal/H;Lcom/android/tools/r8/internal/ww0;)Lcom/android/tools/r8/internal/c6;

    return-void

    .line 37
    :pswitch_f
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/H;)Lcom/android/tools/r8/internal/c6;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fy;->a(Lcom/android/tools/r8/internal/c6;)V

    return-void

    .line 38
    :pswitch_10
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fy;->a()Lcom/android/tools/r8/internal/ww0;

    move-result-object v0

    .line 39
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fy;->a()Lcom/android/tools/r8/internal/ww0;

    move-result-object v1

    .line 40
    invoke-virtual {p2, p1, v1, v0}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/H;Lcom/android/tools/r8/internal/ww0;Lcom/android/tools/r8/internal/ww0;)Lcom/android/tools/r8/internal/c6;

    return-void

    .line 41
    :pswitch_11
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fy;->a()Lcom/android/tools/r8/internal/ww0;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/android/tools/r8/internal/d6;->b(Lcom/android/tools/r8/internal/H;Lcom/android/tools/r8/internal/ww0;)Lcom/android/tools/r8/internal/c6;

    return-void

    .line 42
    :pswitch_12
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fy;->a()Lcom/android/tools/r8/internal/ww0;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/android/tools/r8/internal/d6;->b(Lcom/android/tools/r8/internal/H;Lcom/android/tools/r8/internal/ww0;)Lcom/android/tools/r8/internal/c6;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fy;->a(Lcom/android/tools/r8/internal/c6;)V

    return-void

    .line 43
    :pswitch_13
    move-object v0, p1

    check-cast v0, Lcom/android/tools/r8/internal/PB;

    iget v0, v0, Lcom/android/tools/r8/internal/PB;->g:I

    .line 44
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/fy;->a(I)Lcom/android/tools/r8/internal/ww0;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lcom/android/tools/r8/internal/d6;->b(Lcom/android/tools/r8/internal/H;Lcom/android/tools/r8/internal/ww0;)Lcom/android/tools/r8/internal/c6;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/fy;->a(ILcom/android/tools/r8/internal/c6;)V

    return-void

    .line 45
    :pswitch_14
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fy;->a()Lcom/android/tools/r8/internal/ww0;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/android/tools/r8/internal/d6;->b(Lcom/android/tools/r8/internal/H;Lcom/android/tools/r8/internal/ww0;)Lcom/android/tools/r8/internal/c6;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fy;->a(Lcom/android/tools/r8/internal/c6;)V

    return-void

    .line 46
    :pswitch_15
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fy;->a()Lcom/android/tools/r8/internal/ww0;

    move-result-object v0

    .line 47
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fy;->a()Lcom/android/tools/r8/internal/ww0;

    move-result-object v1

    .line 48
    check-cast v1, Lcom/android/tools/r8/internal/c6;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/c6;->a()I

    move-result v3

    if-ne v3, v2, :cond_3

    check-cast v0, Lcom/android/tools/r8/internal/c6;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/c6;->a()I

    move-result v3

    if-ne v3, v2, :cond_3

    .line 49
    invoke-virtual {p2, p1, v0}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/H;Lcom/android/tools/r8/internal/ww0;)Lcom/android/tools/r8/internal/c6;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/fy;->a(Lcom/android/tools/r8/internal/c6;)V

    .line 50
    invoke-virtual {p2, p1, v1}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/H;Lcom/android/tools/r8/internal/ww0;)Lcom/android/tools/r8/internal/c6;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fy;->a(Lcom/android/tools/r8/internal/c6;)V

    return-void

    .line 51
    :cond_3
    new-instance p2, Lcom/android/tools/r8/internal/s2;

    const-string v0, "Illegal use of SWAP"

    invoke-direct {p2, p1, v0}, Lcom/android/tools/r8/internal/s2;-><init>(Lcom/android/tools/r8/internal/H;Ljava/lang/String;)V

    throw p2

    .line 52
    :pswitch_16
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fy;->a()Lcom/android/tools/r8/internal/ww0;

    move-result-object v0

    .line 53
    check-cast v0, Lcom/android/tools/r8/internal/c6;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/c6;->a()I

    move-result v1

    if-ne v1, v2, :cond_5

    .line 54
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fy;->a()Lcom/android/tools/r8/internal/ww0;

    move-result-object v1

    .line 55
    check-cast v1, Lcom/android/tools/r8/internal/c6;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/c6;->a()I

    move-result v3

    if-ne v3, v2, :cond_6

    .line 56
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fy;->a()Lcom/android/tools/r8/internal/ww0;

    move-result-object v3

    .line 57
    check-cast v3, Lcom/android/tools/r8/internal/c6;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/c6;->a()I

    move-result v4

    if-ne v4, v2, :cond_4

    .line 58
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fy;->a()Lcom/android/tools/r8/internal/ww0;

    move-result-object v4

    .line 59
    check-cast v4, Lcom/android/tools/r8/internal/c6;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/c6;->a()I

    move-result v5

    if-ne v5, v2, :cond_6

    .line 60
    invoke-virtual {p2, p1, v1}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/H;Lcom/android/tools/r8/internal/ww0;)Lcom/android/tools/r8/internal/c6;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/fy;->a(Lcom/android/tools/r8/internal/c6;)V

    .line 61
    invoke-virtual {p2, p1, v0}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/H;Lcom/android/tools/r8/internal/ww0;)Lcom/android/tools/r8/internal/c6;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/fy;->a(Lcom/android/tools/r8/internal/c6;)V

    .line 62
    invoke-virtual {p2, p1, v4}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/H;Lcom/android/tools/r8/internal/ww0;)Lcom/android/tools/r8/internal/c6;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/fy;->a(Lcom/android/tools/r8/internal/c6;)V

    .line 63
    invoke-virtual {p2, p1, v3}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/H;Lcom/android/tools/r8/internal/ww0;)Lcom/android/tools/r8/internal/c6;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/fy;->a(Lcom/android/tools/r8/internal/c6;)V

    .line 64
    invoke-virtual {p2, p1, v1}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/H;Lcom/android/tools/r8/internal/ww0;)Lcom/android/tools/r8/internal/c6;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/fy;->a(Lcom/android/tools/r8/internal/c6;)V

    .line 65
    invoke-virtual {p2, p1, v0}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/H;Lcom/android/tools/r8/internal/ww0;)Lcom/android/tools/r8/internal/c6;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fy;->a(Lcom/android/tools/r8/internal/c6;)V

    return-void

    .line 66
    :cond_4
    invoke-virtual {p2, p1, v1}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/H;Lcom/android/tools/r8/internal/ww0;)Lcom/android/tools/r8/internal/c6;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/fy;->a(Lcom/android/tools/r8/internal/c6;)V

    .line 67
    invoke-virtual {p2, p1, v0}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/H;Lcom/android/tools/r8/internal/ww0;)Lcom/android/tools/r8/internal/c6;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/fy;->a(Lcom/android/tools/r8/internal/c6;)V

    .line 68
    invoke-virtual {p2, p1, v3}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/H;Lcom/android/tools/r8/internal/ww0;)Lcom/android/tools/r8/internal/c6;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/fy;->a(Lcom/android/tools/r8/internal/c6;)V

    .line 69
    invoke-virtual {p2, p1, v1}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/H;Lcom/android/tools/r8/internal/ww0;)Lcom/android/tools/r8/internal/c6;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/fy;->a(Lcom/android/tools/r8/internal/c6;)V

    .line 70
    invoke-virtual {p2, p1, v0}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/H;Lcom/android/tools/r8/internal/ww0;)Lcom/android/tools/r8/internal/c6;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fy;->a(Lcom/android/tools/r8/internal/c6;)V

    return-void

    .line 71
    :cond_5
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/tools/r8/internal/fy;->a(Lcom/android/tools/r8/internal/H;Lcom/android/tools/r8/internal/c6;Lcom/android/tools/r8/internal/d6;)Z

    move-result p2

    if-eqz p2, :cond_6

    goto/16 :goto_3

    .line 72
    :cond_6
    new-instance p2, Lcom/android/tools/r8/internal/s2;

    const-string v0, "Illegal use of DUP2_X2"

    invoke-direct {p2, p1, v0}, Lcom/android/tools/r8/internal/s2;-><init>(Lcom/android/tools/r8/internal/H;Ljava/lang/String;)V

    throw p2

    .line 73
    :pswitch_17
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fy;->a()Lcom/android/tools/r8/internal/ww0;

    move-result-object v0

    .line 74
    check-cast v0, Lcom/android/tools/r8/internal/c6;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/c6;->a()I

    move-result v1

    if-ne v1, v2, :cond_7

    .line 75
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fy;->a()Lcom/android/tools/r8/internal/ww0;

    move-result-object v1

    .line 76
    check-cast v1, Lcom/android/tools/r8/internal/c6;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/c6;->a()I

    move-result v3

    if-ne v3, v2, :cond_8

    .line 77
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fy;->a()Lcom/android/tools/r8/internal/ww0;

    move-result-object v3

    .line 78
    check-cast v3, Lcom/android/tools/r8/internal/c6;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/c6;->a()I

    move-result v4

    if-ne v4, v2, :cond_8

    .line 79
    invoke-virtual {p2, p1, v1}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/H;Lcom/android/tools/r8/internal/ww0;)Lcom/android/tools/r8/internal/c6;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/fy;->a(Lcom/android/tools/r8/internal/c6;)V

    .line 80
    invoke-virtual {p2, p1, v0}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/H;Lcom/android/tools/r8/internal/ww0;)Lcom/android/tools/r8/internal/c6;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/fy;->a(Lcom/android/tools/r8/internal/c6;)V

    .line 81
    invoke-virtual {p2, p1, v3}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/H;Lcom/android/tools/r8/internal/ww0;)Lcom/android/tools/r8/internal/c6;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/fy;->a(Lcom/android/tools/r8/internal/c6;)V

    .line 82
    invoke-virtual {p2, p1, v1}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/H;Lcom/android/tools/r8/internal/ww0;)Lcom/android/tools/r8/internal/c6;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/fy;->a(Lcom/android/tools/r8/internal/c6;)V

    .line 83
    invoke-virtual {p2, p1, v0}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/H;Lcom/android/tools/r8/internal/ww0;)Lcom/android/tools/r8/internal/c6;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fy;->a(Lcom/android/tools/r8/internal/c6;)V

    return-void

    .line 84
    :cond_7
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fy;->a()Lcom/android/tools/r8/internal/ww0;

    move-result-object v1

    .line 85
    check-cast v1, Lcom/android/tools/r8/internal/c6;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/c6;->a()I

    move-result v3

    if-ne v3, v2, :cond_8

    .line 86
    invoke-virtual {p2, p1, v0}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/H;Lcom/android/tools/r8/internal/ww0;)Lcom/android/tools/r8/internal/c6;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/fy;->a(Lcom/android/tools/r8/internal/c6;)V

    .line 87
    invoke-virtual {p2, p1, v1}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/H;Lcom/android/tools/r8/internal/ww0;)Lcom/android/tools/r8/internal/c6;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/fy;->a(Lcom/android/tools/r8/internal/c6;)V

    .line 88
    invoke-virtual {p2, p1, v0}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/H;Lcom/android/tools/r8/internal/ww0;)Lcom/android/tools/r8/internal/c6;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fy;->a(Lcom/android/tools/r8/internal/c6;)V

    return-void

    .line 89
    :cond_8
    new-instance p2, Lcom/android/tools/r8/internal/s2;

    const-string v0, "Illegal use of DUP2_X1"

    invoke-direct {p2, p1, v0}, Lcom/android/tools/r8/internal/s2;-><init>(Lcom/android/tools/r8/internal/H;Ljava/lang/String;)V

    throw p2

    .line 90
    :pswitch_18
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fy;->a()Lcom/android/tools/r8/internal/ww0;

    move-result-object v0

    .line 91
    check-cast v0, Lcom/android/tools/r8/internal/c6;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/c6;->a()I

    move-result v1

    if-ne v1, v2, :cond_a

    .line 92
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fy;->a()Lcom/android/tools/r8/internal/ww0;

    move-result-object v1

    .line 93
    check-cast v1, Lcom/android/tools/r8/internal/c6;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/c6;->a()I

    move-result v3

    if-ne v3, v2, :cond_9

    .line 94
    invoke-virtual {p2, p1, v1}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/H;Lcom/android/tools/r8/internal/ww0;)Lcom/android/tools/r8/internal/c6;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/fy;->a(Lcom/android/tools/r8/internal/c6;)V

    .line 95
    invoke-virtual {p2, p1, v0}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/H;Lcom/android/tools/r8/internal/ww0;)Lcom/android/tools/r8/internal/c6;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/fy;->a(Lcom/android/tools/r8/internal/c6;)V

    .line 96
    invoke-virtual {p2, p1, v1}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/H;Lcom/android/tools/r8/internal/ww0;)Lcom/android/tools/r8/internal/c6;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/fy;->a(Lcom/android/tools/r8/internal/c6;)V

    .line 97
    invoke-virtual {p2, p1, v0}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/H;Lcom/android/tools/r8/internal/ww0;)Lcom/android/tools/r8/internal/c6;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fy;->a(Lcom/android/tools/r8/internal/c6;)V

    return-void

    .line 98
    :cond_9
    new-instance p2, Lcom/android/tools/r8/internal/s2;

    const-string v0, "Illegal use of DUP2"

    invoke-direct {p2, p1, v0}, Lcom/android/tools/r8/internal/s2;-><init>(Lcom/android/tools/r8/internal/H;Ljava/lang/String;)V

    throw p2

    .line 99
    :cond_a
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/fy;->a(Lcom/android/tools/r8/internal/c6;)V

    .line 100
    invoke-virtual {p2, p1, v0}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/H;Lcom/android/tools/r8/internal/ww0;)Lcom/android/tools/r8/internal/c6;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fy;->a(Lcom/android/tools/r8/internal/c6;)V

    return-void

    .line 101
    :pswitch_19
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fy;->a()Lcom/android/tools/r8/internal/ww0;

    move-result-object v0

    .line 102
    check-cast v0, Lcom/android/tools/r8/internal/c6;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/c6;->a()I

    move-result v1

    if-ne v1, v2, :cond_b

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/tools/r8/internal/fy;->a(Lcom/android/tools/r8/internal/H;Lcom/android/tools/r8/internal/c6;Lcom/android/tools/r8/internal/d6;)Z

    move-result p2

    if-eqz p2, :cond_b

    goto/16 :goto_3

    .line 103
    :cond_b
    new-instance p2, Lcom/android/tools/r8/internal/s2;

    const-string v0, "Illegal use of DUP_X2"

    invoke-direct {p2, p1, v0}, Lcom/android/tools/r8/internal/s2;-><init>(Lcom/android/tools/r8/internal/H;Ljava/lang/String;)V

    throw p2

    .line 104
    :pswitch_1a
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fy;->a()Lcom/android/tools/r8/internal/ww0;

    move-result-object v0

    .line 105
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fy;->a()Lcom/android/tools/r8/internal/ww0;

    move-result-object v1

    .line 106
    check-cast v0, Lcom/android/tools/r8/internal/c6;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/c6;->a()I

    move-result v3

    if-ne v3, v2, :cond_c

    check-cast v1, Lcom/android/tools/r8/internal/c6;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/c6;->a()I

    move-result v3

    if-ne v3, v2, :cond_c

    .line 107
    invoke-virtual {p2, p1, v0}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/H;Lcom/android/tools/r8/internal/ww0;)Lcom/android/tools/r8/internal/c6;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/fy;->a(Lcom/android/tools/r8/internal/c6;)V

    .line 108
    invoke-virtual {p2, p1, v1}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/H;Lcom/android/tools/r8/internal/ww0;)Lcom/android/tools/r8/internal/c6;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/fy;->a(Lcom/android/tools/r8/internal/c6;)V

    .line 109
    invoke-virtual {p2, p1, v0}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/H;Lcom/android/tools/r8/internal/ww0;)Lcom/android/tools/r8/internal/c6;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fy;->a(Lcom/android/tools/r8/internal/c6;)V

    return-void

    .line 110
    :cond_c
    new-instance p2, Lcom/android/tools/r8/internal/s2;

    const-string v0, "Illegal use of DUP_X1"

    invoke-direct {p2, p1, v0}, Lcom/android/tools/r8/internal/s2;-><init>(Lcom/android/tools/r8/internal/H;Ljava/lang/String;)V

    throw p2

    .line 111
    :pswitch_1b
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fy;->a()Lcom/android/tools/r8/internal/ww0;

    move-result-object v0

    .line 112
    check-cast v0, Lcom/android/tools/r8/internal/c6;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/c6;->a()I

    move-result v1

    if-ne v1, v2, :cond_d

    .line 113
    invoke-virtual {p2, p1, v0}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/H;Lcom/android/tools/r8/internal/ww0;)Lcom/android/tools/r8/internal/c6;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/fy;->a(Lcom/android/tools/r8/internal/c6;)V

    .line 114
    invoke-virtual {p2, p1, v0}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/H;Lcom/android/tools/r8/internal/ww0;)Lcom/android/tools/r8/internal/c6;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fy;->a(Lcom/android/tools/r8/internal/c6;)V

    return-void

    .line 115
    :cond_d
    new-instance p2, Lcom/android/tools/r8/internal/s2;

    const-string v0, "Illegal use of DUP"

    invoke-direct {p2, p1, v0}, Lcom/android/tools/r8/internal/s2;-><init>(Lcom/android/tools/r8/internal/H;Ljava/lang/String;)V

    throw p2

    .line 116
    :pswitch_1c
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fy;->a()Lcom/android/tools/r8/internal/ww0;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/c6;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/c6;->a()I

    move-result p2

    if-ne p2, v2, :cond_15

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fy;->a()Lcom/android/tools/r8/internal/ww0;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/c6;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/c6;->a()I

    move-result p2

    if-ne p2, v2, :cond_e

    goto/16 :goto_3

    .line 117
    :cond_e
    new-instance p2, Lcom/android/tools/r8/internal/s2;

    const-string v0, "Illegal use of POP2"

    invoke-direct {p2, p1, v0}, Lcom/android/tools/r8/internal/s2;-><init>(Lcom/android/tools/r8/internal/H;Ljava/lang/String;)V

    throw p2

    .line 118
    :pswitch_1d
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fy;->a()Lcom/android/tools/r8/internal/ww0;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/c6;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/c6;->a()I

    move-result p2

    if-eq p2, v1, :cond_f

    goto/16 :goto_3

    .line 119
    :cond_f
    new-instance p2, Lcom/android/tools/r8/internal/s2;

    const-string v0, "Illegal use of POP"

    invoke-direct {p2, p1, v0}, Lcom/android/tools/r8/internal/s2;-><init>(Lcom/android/tools/r8/internal/H;Ljava/lang/String;)V

    throw p2

    .line 120
    :pswitch_1e
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fy;->a()Lcom/android/tools/r8/internal/ww0;

    move-result-object p2

    .line 121
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fy;->a()Lcom/android/tools/r8/internal/ww0;

    move-result-object v0

    .line 122
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fy;->a()Lcom/android/tools/r8/internal/ww0;

    move-result-object v2

    .line 123
    check-cast v2, Lcom/android/tools/r8/internal/c6;

    check-cast v0, Lcom/android/tools/r8/internal/c6;

    check-cast p2, Lcom/android/tools/r8/internal/c6;

    .line 124
    iget v3, p1, Lcom/android/tools/r8/internal/H;->a:I

    packed-switch v3, :pswitch_data_5

    .line 125
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 126
    :pswitch_1f
    const-string v3, "[S"

    .line 127
    invoke-static {v3, v4, v1}, Lcom/android/tools/r8/internal/tt0;->a(Ljava/lang/String;II)Lcom/android/tools/r8/internal/tt0;

    move-result-object v1

    .line 128
    invoke-static {v1}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/tt0;)Lcom/android/tools/r8/internal/c6;

    move-result-object v1

    .line 129
    sget-object v3, Lcom/android/tools/r8/internal/c6;->c:Lcom/android/tools/r8/internal/c6;

    goto :goto_2

    .line 130
    :pswitch_20
    const-string v3, "[C"

    .line 131
    invoke-static {v3, v4, v1}, Lcom/android/tools/r8/internal/tt0;->a(Ljava/lang/String;II)Lcom/android/tools/r8/internal/tt0;

    move-result-object v1

    .line 132
    invoke-static {v1}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/tt0;)Lcom/android/tools/r8/internal/c6;

    move-result-object v1

    .line 133
    sget-object v3, Lcom/android/tools/r8/internal/c6;->c:Lcom/android/tools/r8/internal/c6;

    goto :goto_2

    .line 134
    :pswitch_21
    const-string v3, "[Z"

    invoke-static {v3, v4, v1}, Lcom/android/tools/r8/internal/tt0;->a(Ljava/lang/String;II)Lcom/android/tools/r8/internal/tt0;

    move-result-object v5

    .line 135
    invoke-static {v5}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/tt0;)Lcom/android/tools/r8/internal/c6;

    move-result-object v5

    .line 136
    invoke-virtual {v2, v5}, Lcom/android/tools/r8/internal/c6;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 137
    invoke-static {v3, v4, v1}, Lcom/android/tools/r8/internal/tt0;->a(Ljava/lang/String;II)Lcom/android/tools/r8/internal/tt0;

    move-result-object v1

    .line 138
    invoke-static {v1}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/tt0;)Lcom/android/tools/r8/internal/c6;

    move-result-object v1

    goto :goto_1

    .line 139
    :cond_10
    const-string v3, "[B"

    .line 140
    invoke-static {v3, v4, v1}, Lcom/android/tools/r8/internal/tt0;->a(Ljava/lang/String;II)Lcom/android/tools/r8/internal/tt0;

    move-result-object v1

    .line 141
    invoke-static {v1}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/tt0;)Lcom/android/tools/r8/internal/c6;

    move-result-object v1

    .line 142
    :goto_1
    sget-object v3, Lcom/android/tools/r8/internal/c6;->c:Lcom/android/tools/r8/internal/c6;

    goto :goto_2

    .line 143
    :pswitch_22
    sget-object v3, Lcom/android/tools/r8/internal/c6;->g:Lcom/android/tools/r8/internal/c6;

    move-object v1, v2

    goto :goto_2

    .line 144
    :pswitch_23
    const-string v3, "[D"

    .line 145
    invoke-static {v3, v4, v1}, Lcom/android/tools/r8/internal/tt0;->a(Ljava/lang/String;II)Lcom/android/tools/r8/internal/tt0;

    move-result-object v1

    .line 146
    invoke-static {v1}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/tt0;)Lcom/android/tools/r8/internal/c6;

    move-result-object v1

    .line 147
    sget-object v3, Lcom/android/tools/r8/internal/c6;->f:Lcom/android/tools/r8/internal/c6;

    goto :goto_2

    .line 148
    :pswitch_24
    const-string v3, "[F"

    .line 149
    invoke-static {v3, v4, v1}, Lcom/android/tools/r8/internal/tt0;->a(Ljava/lang/String;II)Lcom/android/tools/r8/internal/tt0;

    move-result-object v1

    .line 150
    invoke-static {v1}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/tt0;)Lcom/android/tools/r8/internal/c6;

    move-result-object v1

    .line 151
    sget-object v3, Lcom/android/tools/r8/internal/c6;->d:Lcom/android/tools/r8/internal/c6;

    goto :goto_2

    .line 152
    :pswitch_25
    const-string v3, "[J"

    .line 153
    invoke-static {v3, v4, v1}, Lcom/android/tools/r8/internal/tt0;->a(Ljava/lang/String;II)Lcom/android/tools/r8/internal/tt0;

    move-result-object v1

    .line 154
    invoke-static {v1}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/tt0;)Lcom/android/tools/r8/internal/c6;

    move-result-object v1

    .line 155
    sget-object v3, Lcom/android/tools/r8/internal/c6;->e:Lcom/android/tools/r8/internal/c6;

    goto :goto_2

    .line 156
    :pswitch_26
    const-string v3, "[I"

    .line 157
    invoke-static {v3, v4, v1}, Lcom/android/tools/r8/internal/tt0;->a(Ljava/lang/String;II)Lcom/android/tools/r8/internal/tt0;

    move-result-object v1

    .line 158
    invoke-static {v1}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/tt0;)Lcom/android/tools/r8/internal/c6;

    move-result-object v1

    .line 159
    sget-object v3, Lcom/android/tools/r8/internal/c6;->c:Lcom/android/tools/r8/internal/c6;

    .line 160
    :goto_2
    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/c6;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 161
    sget-object v1, Lcom/android/tools/r8/internal/c6;->c:Lcom/android/tools/r8/internal/c6;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/c6;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 162
    invoke-virtual {p2, v3}, Lcom/android/tools/r8/internal/c6;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto/16 :goto_3

    .line 163
    :cond_11
    new-instance v0, Lcom/android/tools/r8/internal/s2;

    const-string v1, "Third argument"

    invoke-direct {v0, p1, v1, v3, p2}, Lcom/android/tools/r8/internal/s2;-><init>(Lcom/android/tools/r8/internal/H;Ljava/lang/String;Ljava/lang/Object;Lcom/android/tools/r8/internal/ww0;)V

    throw v0

    .line 164
    :cond_12
    new-instance p2, Lcom/android/tools/r8/internal/s2;

    const-string v2, "Second argument"

    invoke-direct {p2, p1, v2, v1, v0}, Lcom/android/tools/r8/internal/s2;-><init>(Lcom/android/tools/r8/internal/H;Ljava/lang/String;Ljava/lang/Object;Lcom/android/tools/r8/internal/ww0;)V

    throw p2

    .line 165
    :cond_13
    new-instance p2, Lcom/android/tools/r8/internal/s2;

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "a "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " array reference"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    const-string v1, "First argument"

    invoke-direct {p2, p1, v1, v0, v2}, Lcom/android/tools/r8/internal/s2;-><init>(Lcom/android/tools/r8/internal/H;Ljava/lang/String;Ljava/lang/Object;Lcom/android/tools/r8/internal/ww0;)V

    throw p2

    .line 168
    :pswitch_27
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fy;->a()Lcom/android/tools/r8/internal/ww0;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/H;Lcom/android/tools/r8/internal/ww0;)Lcom/android/tools/r8/internal/c6;

    move-result-object p2

    .line 169
    check-cast p1, Lcom/android/tools/r8/internal/Sw0;

    iget p1, p1, Lcom/android/tools/r8/internal/Sw0;->g:I

    .line 170
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/fy;->a(ILcom/android/tools/r8/internal/c6;)V

    .line 171
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/c6;->a()I

    move-result p2

    if-ne p2, v1, :cond_14

    add-int/lit8 p2, p1, 0x1

    .line 172
    sget-object v0, Lcom/android/tools/r8/internal/d6;->a:Lcom/android/tools/r8/internal/tt0;

    .line 173
    sget-object v0, Lcom/android/tools/r8/internal/c6;->b:Lcom/android/tools/r8/internal/c6;

    invoke-virtual {p0, p2, v0}, Lcom/android/tools/r8/internal/fy;->a(ILcom/android/tools/r8/internal/c6;)V

    :cond_14
    if-lez p1, :cond_15

    sub-int/2addr p1, v2

    .line 174
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fy;->a(I)Lcom/android/tools/r8/internal/ww0;

    move-result-object p2

    if-eqz p2, :cond_15

    .line 175
    check-cast p2, Lcom/android/tools/r8/internal/c6;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/c6;->a()I

    move-result p2

    if-ne p2, v1, :cond_15

    .line 176
    sget-object p2, Lcom/android/tools/r8/internal/d6;->a:Lcom/android/tools/r8/internal/tt0;

    .line 177
    sget-object p2, Lcom/android/tools/r8/internal/c6;->b:Lcom/android/tools/r8/internal/c6;

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/fy;->a(ILcom/android/tools/r8/internal/c6;)V

    return-void

    .line 178
    :pswitch_28
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fy;->a()Lcom/android/tools/r8/internal/ww0;

    move-result-object v0

    .line 179
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fy;->a()Lcom/android/tools/r8/internal/ww0;

    move-result-object v1

    .line 180
    invoke-virtual {p2, p1, v1, v0}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/H;Lcom/android/tools/r8/internal/ww0;Lcom/android/tools/r8/internal/ww0;)Lcom/android/tools/r8/internal/c6;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fy;->a(Lcom/android/tools/r8/internal/c6;)V

    return-void

    .line 181
    :pswitch_29
    move-object v0, p1

    check-cast v0, Lcom/android/tools/r8/internal/Sw0;

    iget v0, v0, Lcom/android/tools/r8/internal/Sw0;->g:I

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/fy;->a(I)Lcom/android/tools/r8/internal/ww0;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/H;Lcom/android/tools/r8/internal/ww0;)Lcom/android/tools/r8/internal/c6;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fy;->a(Lcom/android/tools/r8/internal/c6;)V

    return-void

    .line 182
    :pswitch_2a
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/H;)Lcom/android/tools/r8/internal/c6;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fy;->a(Lcom/android/tools/r8/internal/c6;)V

    :cond_15
    :goto_3
    :pswitch_2b
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2e
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x4f
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_13
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_2b
        :pswitch_f
        :pswitch_2b
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_10
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xc5
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x4f
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
    .end packed-switch
.end method

.method public final a(Lcom/android/tools/r8/internal/H;Ljava/lang/String;Lcom/android/tools/r8/internal/d6;)V
    .locals 4

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 214
    invoke-static {p2}, Lcom/android/tools/r8/internal/tt0;->a(Ljava/lang/String;)I

    move-result v1

    :goto_0
    const/4 v2, 0x0

    if-lez v1, :cond_0

    .line 215
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fy;->a()Lcom/android/tools/r8/internal/ww0;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 216
    :cond_0
    iget v1, p1, Lcom/android/tools/r8/internal/H;->a:I

    const/16 v3, 0xb8

    if-eq v1, v3, :cond_1

    const/16 v3, 0xba

    if-eq v1, v3, :cond_1

    .line 217
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fy;->a()Lcom/android/tools/r8/internal/ww0;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 218
    :cond_1
    invoke-static {p2}, Lcom/android/tools/r8/internal/tt0;->e(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 219
    invoke-static {p2, v1, v2}, Lcom/android/tools/r8/internal/tt0;->a(Ljava/lang/String;II)Lcom/android/tools/r8/internal/tt0;

    move-result-object p2

    .line 220
    sget-object v1, Lcom/android/tools/r8/internal/tt0;->e:Lcom/android/tools/r8/internal/tt0;

    if-ne p2, v1, :cond_2

    .line 221
    invoke-virtual {p3, p1, v0}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/H;Ljava/util/ArrayList;)Lcom/android/tools/r8/internal/c6;

    return-void

    .line 222
    :cond_2
    invoke-virtual {p3, p1, v0}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/H;Ljava/util/ArrayList;)Lcom/android/tools/r8/internal/c6;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fy;->a(Lcom/android/tools/r8/internal/c6;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/c6;)V
    .locals 4

    .line 196
    iget v0, p0, Lcom/android/tools/r8/internal/fy;->c:I

    iget v1, p0, Lcom/android/tools/r8/internal/fy;->d:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/tools/r8/internal/fy;->b:[Lcom/android/tools/r8/internal/ww0;

    array-length v2, v1

    if-lt v0, v2, :cond_1

    .line 197
    iget v2, p0, Lcom/android/tools/r8/internal/fy;->e:I

    if-ge v0, v2, :cond_0

    .line 198
    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lcom/android/tools/r8/internal/ww0;

    iput-object v0, p0, Lcom/android/tools/r8/internal/fy;->b:[Lcom/android/tools/r8/internal/ww0;

    .line 199
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 200
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "Insufficient maximum stack size."

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 201
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/fy;->b:[Lcom/android/tools/r8/internal/ww0;

    iget v1, p0, Lcom/android/tools/r8/internal/fy;->c:I

    iget v2, p0, Lcom/android/tools/r8/internal/fy;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/tools/r8/internal/fy;->d:I

    add-int/2addr v1, v2

    aput-object p1, v0, v1

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/H;Lcom/android/tools/r8/internal/c6;Lcom/android/tools/r8/internal/d6;)Z
    .locals 4

    .line 202
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fy;->a()Lcom/android/tools/r8/internal/ww0;

    move-result-object v0

    .line 203
    check-cast v0, Lcom/android/tools/r8/internal/c6;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/c6;->a()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 204
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fy;->a()Lcom/android/tools/r8/internal/ww0;

    move-result-object v1

    .line 205
    check-cast v1, Lcom/android/tools/r8/internal/c6;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/c6;->a()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 206
    invoke-virtual {p3, p1, p2}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/H;Lcom/android/tools/r8/internal/ww0;)Lcom/android/tools/r8/internal/c6;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/fy;->a(Lcom/android/tools/r8/internal/c6;)V

    .line 207
    invoke-virtual {p3, p1, v1}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/H;Lcom/android/tools/r8/internal/ww0;)Lcom/android/tools/r8/internal/c6;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/fy;->a(Lcom/android/tools/r8/internal/c6;)V

    .line 208
    invoke-virtual {p3, p1, v0}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/H;Lcom/android/tools/r8/internal/ww0;)Lcom/android/tools/r8/internal/c6;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/fy;->a(Lcom/android/tools/r8/internal/c6;)V

    .line 209
    invoke-virtual {p3, p1, p2}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/H;Lcom/android/tools/r8/internal/ww0;)Lcom/android/tools/r8/internal/c6;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fy;->a(Lcom/android/tools/r8/internal/c6;)V

    return v2

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 210
    :cond_1
    invoke-virtual {p3, p1, p2}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/H;Lcom/android/tools/r8/internal/ww0;)Lcom/android/tools/r8/internal/c6;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/fy;->a(Lcom/android/tools/r8/internal/c6;)V

    .line 211
    invoke-virtual {p3, p1, v0}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/H;Lcom/android/tools/r8/internal/ww0;)Lcom/android/tools/r8/internal/c6;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/fy;->a(Lcom/android/tools/r8/internal/c6;)V

    .line 212
    invoke-virtual {p3, p1, p2}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/H;Lcom/android/tools/r8/internal/ww0;)Lcom/android/tools/r8/internal/c6;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fy;->a(Lcom/android/tools/r8/internal/c6;)V

    return v2
.end method

.method public final a(Lcom/android/tools/r8/internal/fy;Lcom/android/tools/r8/internal/d6;)Z
    .locals 3

    .line 223
    iget p2, p0, Lcom/android/tools/r8/internal/fy;->d:I

    iget v0, p1, Lcom/android/tools/r8/internal/fy;->d:I

    if-ne p2, v0, :cond_3

    const/4 p2, 0x0

    move v0, p2

    .line 224
    :goto_0
    iget v1, p0, Lcom/android/tools/r8/internal/fy;->c:I

    iget v2, p0, Lcom/android/tools/r8/internal/fy;->d:I

    add-int/2addr v1, v2

    if-ge p2, v1, :cond_2

    .line 225
    iget-object v1, p0, Lcom/android/tools/r8/internal/fy;->b:[Lcom/android/tools/r8/internal/ww0;

    aget-object v1, v1, p2

    iget-object v2, p1, Lcom/android/tools/r8/internal/fy;->b:[Lcom/android/tools/r8/internal/ww0;

    aget-object v2, v2, p2

    .line 226
    check-cast v1, Lcom/android/tools/r8/internal/c6;

    check-cast v2, Lcom/android/tools/r8/internal/c6;

    .line 227
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/c6;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 228
    sget-object v1, Lcom/android/tools/r8/internal/c6;->b:Lcom/android/tools/r8/internal/c6;

    .line 229
    :cond_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/fy;->b:[Lcom/android/tools/r8/internal/ww0;

    aget-object v2, v2, p2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/c6;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 230
    iget-object v0, p0, Lcom/android/tools/r8/internal/fy;->b:[Lcom/android/tools/r8/internal/ww0;

    aput-object v1, v0, p2

    const/4 v0, 0x1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return v0

    .line 231
    :cond_3
    new-instance p1, Lcom/android/tools/r8/internal/s2;

    const/4 p2, 0x0

    const-string v0, "Incompatible stack heights"

    invoke-direct {p1, p2, v0}, Lcom/android/tools/r8/internal/s2;-><init>(Lcom/android/tools/r8/internal/H;Ljava/lang/String;)V

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lcom/android/tools/r8/internal/fy;->c:I

    if-ge v2, v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/fy;->a(I)Lcom/android/tools/r8/internal/ww0;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    iget v2, p0, Lcom/android/tools/r8/internal/fy;->d:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/tools/r8/internal/fy;->b:[Lcom/android/tools/r8/internal/ww0;

    iget v3, p0, Lcom/android/tools/r8/internal/fy;->c:I

    add-int/2addr v3, v1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
