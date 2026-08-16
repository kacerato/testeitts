.class public final Lcom/android/tools/r8/internal/S2;
.super Lcom/android/tools/r8/internal/Q2;
.source "SourceFile"


# instance fields
.field public final b:Lcom/android/tools/r8/internal/jr0;

.field public final c:Z

.field public final d:Lcom/android/tools/r8/internal/p8;

.field public final e:I

.field public f:I

.field public final g:Lcom/android/tools/r8/internal/S2;

.field public final h:Lcom/android/tools/r8/internal/S2;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/jr0;ZLcom/android/tools/r8/internal/p8;Lcom/android/tools/r8/internal/S2;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/Q2;-><init>(Lcom/android/tools/r8/internal/Q2;)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/S2;->b:Lcom/android/tools/r8/internal/jr0;

    iput-boolean p2, p0, Lcom/android/tools/r8/internal/S2;->c:Z

    iput-object p3, p0, Lcom/android/tools/r8/internal/S2;->d:Lcom/android/tools/r8/internal/p8;

    iget p1, p3, Lcom/android/tools/r8/internal/p8;->b:I

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, -0x2

    :goto_0
    iput p1, p0, Lcom/android/tools/r8/internal/S2;->e:I

    iput-object p4, p0, Lcom/android/tools/r8/internal/S2;->g:Lcom/android/tools/r8/internal/S2;

    if-eqz p4, :cond_1

    iput-object p0, p4, Lcom/android/tools/r8/internal/S2;->h:Lcom/android/tools/r8/internal/S2;

    :cond_1
    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/S2;Lcom/android/tools/r8/internal/S2;Lcom/android/tools/r8/internal/S2;Lcom/android/tools/r8/internal/S2;)I
    .locals 1

    if-eqz p0, :cond_0

    .line 117
    const-string v0, "RuntimeVisibleAnnotations"

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/S2;->b(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 118
    const-string v0, "RuntimeInvisibleAnnotations"

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/S2;->b(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p0, p1

    :cond_1
    if-eqz p2, :cond_2

    .line 119
    const-string p1, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/S2;->b(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p0, p1

    :cond_2
    if-eqz p3, :cond_3

    .line 120
    const-string p1, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {p3, p1}, Lcom/android/tools/r8/internal/S2;->b(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p1, p0

    return p1

    :cond_3
    return p0
.end method

.method public static a(Lcom/android/tools/r8/internal/jr0;ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;Lcom/android/tools/r8/internal/S2;)Lcom/android/tools/r8/internal/S2;
    .locals 4

    .line 4
    new-instance v0, Lcom/android/tools/r8/internal/p8;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/p8;-><init>()V

    ushr-int/lit8 v1, p1, 0x18

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    .line 5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 6
    :pswitch_0
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/p8;->c(I)Lcom/android/tools/r8/internal/p8;

    goto :goto_0

    .line 7
    :pswitch_1
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/p8;->b(I)Lcom/android/tools/r8/internal/p8;

    goto :goto_0

    :pswitch_2
    const v3, 0xffff00

    and-int/2addr p1, v3

    shr-int/lit8 p1, p1, 0x8

    .line 8
    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/p8;->c(II)Lcom/android/tools/r8/internal/p8;

    goto :goto_0

    :cond_0
    :pswitch_3
    ushr-int/lit8 p1, p1, 0x10

    .line 9
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    :goto_0
    const/4 p1, 0x0

    if-nez p2, :cond_1

    .line 10
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/p8;->b(I)Lcom/android/tools/r8/internal/p8;

    goto :goto_1

    .line 11
    :cond_1
    iget-object v1, p2, Lcom/android/tools/r8/internal/tu0;->a:[B

    iget p2, p2, Lcom/android/tools/r8/internal/tu0;->b:I

    aget-byte v3, v1, p2

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    .line 12
    invoke-virtual {v0, v1, p2, v3}, Lcom/android/tools/r8/internal/p8;->a([BII)Lcom/android/tools/r8/internal/p8;

    .line 13
    :goto_1
    invoke-virtual {p0, p3}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    .line 14
    new-instance p1, Lcom/android/tools/r8/internal/S2;

    invoke-direct {p1, p0, v2, v0, p4}, Lcom/android/tools/r8/internal/S2;-><init>(Lcom/android/tools/r8/internal/jr0;ZLcom/android/tools/r8/internal/p8;Lcom/android/tools/r8/internal/S2;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x42
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Lcom/android/tools/r8/internal/jr0;Ljava/lang/String;Lcom/android/tools/r8/internal/S2;)Lcom/android/tools/r8/internal/S2;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/p8;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/p8;-><init>()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    .line 3
    new-instance p1, Lcom/android/tools/r8/internal/S2;

    const/4 v1, 0x1

    invoke-direct {p1, p0, v1, v0, p2}, Lcom/android/tools/r8/internal/S2;-><init>(Lcom/android/tools/r8/internal/jr0;ZLcom/android/tools/r8/internal/p8;Lcom/android/tools/r8/internal/S2;)V

    return-object p1
.end method

.method public static a(I[Lcom/android/tools/r8/internal/S2;ILcom/android/tools/r8/internal/p8;)V
    .locals 6

    mul-int/lit8 v0, p2, 0x2

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x0

    if-ge v2, p2, :cond_1

    .line 137
    aget-object v4, p1, v2

    if-nez v4, :cond_0

    move v3, v1

    goto :goto_1

    .line 138
    :cond_0
    invoke-virtual {v4, v3}, Lcom/android/tools/r8/internal/S2;->b(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, -0x8

    :goto_1
    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {p3, p0}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    .line 140
    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/p8;->c(I)Lcom/android/tools/r8/internal/p8;

    .line 141
    invoke-virtual {p3, p2}, Lcom/android/tools/r8/internal/p8;->b(I)Lcom/android/tools/r8/internal/p8;

    move p0, v1

    :goto_2
    if-ge p0, p2, :cond_4

    .line 142
    aget-object v0, p1, p0

    move v2, v1

    move-object v4, v3

    :goto_3
    if-eqz v0, :cond_2

    .line 143
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/S2;->a()V

    add-int/lit8 v2, v2, 0x1

    .line 144
    iget-object v4, v0, Lcom/android/tools/r8/internal/S2;->g:Lcom/android/tools/r8/internal/S2;

    move-object v5, v4

    move-object v4, v0

    move-object v0, v5

    goto :goto_3

    .line 145
    :cond_2
    invoke-virtual {p3, v2}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    :goto_4
    if-eqz v4, :cond_3

    .line 146
    iget-object v0, v4, Lcom/android/tools/r8/internal/S2;->d:Lcom/android/tools/r8/internal/p8;

    iget-object v2, v0, Lcom/android/tools/r8/internal/p8;->a:[B

    iget v0, v0, Lcom/android/tools/r8/internal/p8;->b:I

    invoke-virtual {p3, v2, v1, v0}, Lcom/android/tools/r8/internal/p8;->a([BII)Lcom/android/tools/r8/internal/p8;

    .line 147
    iget-object v4, v4, Lcom/android/tools/r8/internal/S2;->h:Lcom/android/tools/r8/internal/S2;

    goto :goto_4

    :cond_3
    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/jr0;Lcom/android/tools/r8/internal/S2;Lcom/android/tools/r8/internal/S2;Lcom/android/tools/r8/internal/S2;Lcom/android/tools/r8/internal/S2;Lcom/android/tools/r8/internal/p8;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 129
    const-string v0, "RuntimeVisibleAnnotations"

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    move-result v0

    .line 130
    invoke-virtual {p1, v0, p5}, Lcom/android/tools/r8/internal/S2;->a(ILcom/android/tools/r8/internal/p8;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 131
    const-string p1, "RuntimeInvisibleAnnotations"

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    move-result p1

    .line 132
    invoke-virtual {p2, p1, p5}, Lcom/android/tools/r8/internal/S2;->a(ILcom/android/tools/r8/internal/p8;)V

    :cond_1
    if-eqz p3, :cond_2

    .line 133
    const-string p1, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    move-result p1

    .line 134
    invoke-virtual {p3, p1, p5}, Lcom/android/tools/r8/internal/S2;->a(ILcom/android/tools/r8/internal/p8;)V

    :cond_2
    if-eqz p4, :cond_3

    .line 135
    const-string p1, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    move-result p0

    .line 136
    invoke-virtual {p4, p0, p5}, Lcom/android/tools/r8/internal/S2;->a(ILcom/android/tools/r8/internal/p8;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;
    .locals 4

    .line 108
    iget v0, p0, Lcom/android/tools/r8/internal/S2;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/tools/r8/internal/S2;->f:I

    .line 109
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/S2;->c:Z

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/tools/r8/internal/S2;->d:Lcom/android/tools/r8/internal/p8;

    iget-object v1, p0, Lcom/android/tools/r8/internal/S2;->b:Lcom/android/tools/r8/internal/jr0;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    .line 111
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/S2;->d:Lcom/android/tools/r8/internal/p8;

    const/16 v0, 0x5b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/internal/p8;->c(II)Lcom/android/tools/r8/internal/p8;

    .line 112
    new-instance p1, Lcom/android/tools/r8/internal/S2;

    iget-object v0, p0, Lcom/android/tools/r8/internal/S2;->b:Lcom/android/tools/r8/internal/jr0;

    iget-object v2, p0, Lcom/android/tools/r8/internal/S2;->d:Lcom/android/tools/r8/internal/p8;

    const/4 v3, 0x0

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/android/tools/r8/internal/S2;-><init>(Lcom/android/tools/r8/internal/jr0;ZLcom/android/tools/r8/internal/p8;Lcom/android/tools/r8/internal/S2;)V

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;
    .locals 3

    .line 103
    iget v0, p0, Lcom/android/tools/r8/internal/S2;->f:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/internal/S2;->f:I

    .line 104
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/S2;->c:Z

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/tools/r8/internal/S2;->d:Lcom/android/tools/r8/internal/p8;

    iget-object v2, p0, Lcom/android/tools/r8/internal/S2;->b:Lcom/android/tools/r8/internal/jr0;

    invoke-virtual {v2, p1}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    .line 106
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/S2;->d:Lcom/android/tools/r8/internal/p8;

    iget-object v0, p0, Lcom/android/tools/r8/internal/S2;->b:Lcom/android/tools/r8/internal/jr0;

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    move-result p2

    const/16 v0, 0x40

    invoke-virtual {p1, v0, p2}, Lcom/android/tools/r8/internal/p8;->c(II)Lcom/android/tools/r8/internal/p8;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    .line 107
    new-instance p1, Lcom/android/tools/r8/internal/S2;

    iget-object p2, p0, Lcom/android/tools/r8/internal/S2;->b:Lcom/android/tools/r8/internal/jr0;

    iget-object v0, p0, Lcom/android/tools/r8/internal/S2;->d:Lcom/android/tools/r8/internal/p8;

    const/4 v2, 0x0

    invoke-direct {p1, p2, v1, v0, v2}, Lcom/android/tools/r8/internal/S2;-><init>(Lcom/android/tools/r8/internal/jr0;ZLcom/android/tools/r8/internal/p8;Lcom/android/tools/r8/internal/S2;)V

    return-object p1
.end method

.method public final a()V
    .locals 4

    .line 113
    iget v0, p0, Lcom/android/tools/r8/internal/S2;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/android/tools/r8/internal/S2;->d:Lcom/android/tools/r8/internal/p8;

    iget-object v1, v1, Lcom/android/tools/r8/internal/p8;->a:[B

    .line 115
    iget v2, p0, Lcom/android/tools/r8/internal/S2;->f:I

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    int-to-byte v2, v2

    .line 116
    aput-byte v2, v1, v0

    :cond_0
    return-void
.end method

.method public final a(ILcom/android/tools/r8/internal/p8;)V
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v4, v1

    move-object v3, v2

    move-object v2, p0

    :goto_0
    if-eqz v2, :cond_0

    .line 121
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/S2;->a()V

    .line 122
    iget-object v3, v2, Lcom/android/tools/r8/internal/S2;->d:Lcom/android/tools/r8/internal/p8;

    iget v3, v3, Lcom/android/tools/r8/internal/p8;->b:I

    add-int/2addr v0, v3

    add-int/lit8 v4, v4, 0x1

    .line 123
    iget-object v3, v2, Lcom/android/tools/r8/internal/S2;->g:Lcom/android/tools/r8/internal/S2;

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    goto :goto_0

    .line 124
    :cond_0
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    .line 125
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/p8;->c(I)Lcom/android/tools/r8/internal/p8;

    .line 126
    invoke-virtual {p2, v4}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    :goto_1
    if-eqz v3, :cond_1

    .line 127
    iget-object p1, v3, Lcom/android/tools/r8/internal/S2;->d:Lcom/android/tools/r8/internal/p8;

    iget-object v0, p1, Lcom/android/tools/r8/internal/p8;->a:[B

    iget p1, p1, Lcom/android/tools/r8/internal/p8;->b:I

    invoke-virtual {p2, v0, v1, p1}, Lcom/android/tools/r8/internal/p8;->a([BII)Lcom/android/tools/r8/internal/p8;

    .line 128
    iget-object v3, v3, Lcom/android/tools/r8/internal/S2;->h:Lcom/android/tools/r8/internal/S2;

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 7

    .line 15
    iget v0, p0, Lcom/android/tools/r8/internal/S2;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/tools/r8/internal/S2;->f:I

    .line 16
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/S2;->c:Z

    if-eqz v0, :cond_0

    .line 17
    iget-object v0, p0, Lcom/android/tools/r8/internal/S2;->d:Lcom/android/tools/r8/internal/p8;

    iget-object v1, p0, Lcom/android/tools/r8/internal/S2;->b:Lcom/android/tools/r8/internal/jr0;

    invoke-virtual {v1, p2}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    .line 18
    :cond_0
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 19
    iget-object p2, p0, Lcom/android/tools/r8/internal/S2;->d:Lcom/android/tools/r8/internal/p8;

    iget-object v0, p0, Lcom/android/tools/r8/internal/S2;->b:Lcom/android/tools/r8/internal/jr0;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    move-result p1

    const/16 v0, 0x73

    invoke-virtual {p2, v0, p1}, Lcom/android/tools/r8/internal/p8;->c(II)Lcom/android/tools/r8/internal/p8;

    return-void

    .line 20
    :cond_1
    instance-of p2, p1, Ljava/lang/Byte;

    const/16 v0, 0x42

    const/4 v1, 0x3

    if-eqz p2, :cond_2

    .line 21
    iget-object p2, p0, Lcom/android/tools/r8/internal/S2;->d:Lcom/android/tools/r8/internal/p8;

    iget-object v2, p0, Lcom/android/tools/r8/internal/S2;->b:Lcom/android/tools/r8/internal/jr0;

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    .line 22
    invoke-virtual {v2, v1, p1}, Lcom/android/tools/r8/internal/jr0;->a(II)Lcom/android/tools/r8/internal/hr0;

    move-result-object p1

    .line 23
    iget p1, p1, Lcom/android/tools/r8/internal/hr0;->a:I

    invoke-virtual {p2, v0, p1}, Lcom/android/tools/r8/internal/p8;->c(II)Lcom/android/tools/r8/internal/p8;

    return-void

    .line 24
    :cond_2
    instance-of p2, p1, Ljava/lang/Boolean;

    const/16 v2, 0x5a

    if-eqz p2, :cond_3

    .line 25
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 26
    iget-object p2, p0, Lcom/android/tools/r8/internal/S2;->d:Lcom/android/tools/r8/internal/p8;

    iget-object v0, p0, Lcom/android/tools/r8/internal/S2;->b:Lcom/android/tools/r8/internal/jr0;

    .line 27
    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/jr0;->a(II)Lcom/android/tools/r8/internal/hr0;

    move-result-object p1

    .line 28
    iget p1, p1, Lcom/android/tools/r8/internal/hr0;->a:I

    invoke-virtual {p2, v2, p1}, Lcom/android/tools/r8/internal/p8;->c(II)Lcom/android/tools/r8/internal/p8;

    return-void

    .line 29
    :cond_3
    instance-of p2, p1, Ljava/lang/Character;

    const/16 v3, 0x43

    if-eqz p2, :cond_4

    .line 30
    iget-object p2, p0, Lcom/android/tools/r8/internal/S2;->d:Lcom/android/tools/r8/internal/p8;

    iget-object v0, p0, Lcom/android/tools/r8/internal/S2;->b:Lcom/android/tools/r8/internal/jr0;

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    .line 31
    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/jr0;->a(II)Lcom/android/tools/r8/internal/hr0;

    move-result-object p1

    .line 32
    iget p1, p1, Lcom/android/tools/r8/internal/hr0;->a:I

    invoke-virtual {p2, v3, p1}, Lcom/android/tools/r8/internal/p8;->c(II)Lcom/android/tools/r8/internal/p8;

    return-void

    .line 33
    :cond_4
    instance-of p2, p1, Ljava/lang/Short;

    const/16 v4, 0x53

    if-eqz p2, :cond_5

    .line 34
    iget-object p2, p0, Lcom/android/tools/r8/internal/S2;->d:Lcom/android/tools/r8/internal/p8;

    iget-object v0, p0, Lcom/android/tools/r8/internal/S2;->b:Lcom/android/tools/r8/internal/jr0;

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    .line 35
    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/jr0;->a(II)Lcom/android/tools/r8/internal/hr0;

    move-result-object p1

    .line 36
    iget p1, p1, Lcom/android/tools/r8/internal/hr0;->a:I

    invoke-virtual {p2, v4, p1}, Lcom/android/tools/r8/internal/p8;->c(II)Lcom/android/tools/r8/internal/p8;

    return-void

    .line 37
    :cond_5
    instance-of p2, p1, Lcom/android/tools/r8/internal/tt0;

    if-eqz p2, :cond_6

    .line 38
    iget-object p2, p0, Lcom/android/tools/r8/internal/S2;->d:Lcom/android/tools/r8/internal/p8;

    iget-object v0, p0, Lcom/android/tools/r8/internal/S2;->b:Lcom/android/tools/r8/internal/jr0;

    check-cast p1, Lcom/android/tools/r8/internal/tt0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/tt0;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    move-result p1

    const/16 v0, 0x63

    invoke-virtual {p2, v0, p1}, Lcom/android/tools/r8/internal/p8;->c(II)Lcom/android/tools/r8/internal/p8;

    return-void

    .line 39
    :cond_6
    instance-of p2, p1, [B

    const/4 v5, 0x0

    const/16 v6, 0x5b

    if-eqz p2, :cond_7

    .line 40
    check-cast p1, [B

    .line 41
    iget-object p2, p0, Lcom/android/tools/r8/internal/S2;->d:Lcom/android/tools/r8/internal/p8;

    array-length v2, p1

    invoke-virtual {p2, v6, v2}, Lcom/android/tools/r8/internal/p8;->c(II)Lcom/android/tools/r8/internal/p8;

    .line 42
    array-length p2, p1

    :goto_0
    if-ge v5, p2, :cond_e

    aget-byte v2, p1, v5

    .line 43
    iget-object v3, p0, Lcom/android/tools/r8/internal/S2;->d:Lcom/android/tools/r8/internal/p8;

    iget-object v4, p0, Lcom/android/tools/r8/internal/S2;->b:Lcom/android/tools/r8/internal/jr0;

    .line 44
    invoke-virtual {v4, v1, v2}, Lcom/android/tools/r8/internal/jr0;->a(II)Lcom/android/tools/r8/internal/hr0;

    move-result-object v2

    .line 45
    iget v2, v2, Lcom/android/tools/r8/internal/hr0;->a:I

    invoke-virtual {v3, v0, v2}, Lcom/android/tools/r8/internal/p8;->c(II)Lcom/android/tools/r8/internal/p8;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 46
    :cond_7
    instance-of p2, p1, [Z

    if-eqz p2, :cond_8

    .line 47
    check-cast p1, [Z

    .line 48
    iget-object p2, p0, Lcom/android/tools/r8/internal/S2;->d:Lcom/android/tools/r8/internal/p8;

    array-length v0, p1

    invoke-virtual {p2, v6, v0}, Lcom/android/tools/r8/internal/p8;->c(II)Lcom/android/tools/r8/internal/p8;

    .line 49
    array-length p2, p1

    :goto_1
    if-ge v5, p2, :cond_e

    aget-boolean v0, p1, v5

    .line 50
    iget-object v3, p0, Lcom/android/tools/r8/internal/S2;->d:Lcom/android/tools/r8/internal/p8;

    iget-object v4, p0, Lcom/android/tools/r8/internal/S2;->b:Lcom/android/tools/r8/internal/jr0;

    .line 51
    invoke-virtual {v4, v1, v0}, Lcom/android/tools/r8/internal/jr0;->a(II)Lcom/android/tools/r8/internal/hr0;

    move-result-object v0

    .line 52
    iget v0, v0, Lcom/android/tools/r8/internal/hr0;->a:I

    invoke-virtual {v3, v2, v0}, Lcom/android/tools/r8/internal/p8;->c(II)Lcom/android/tools/r8/internal/p8;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 53
    :cond_8
    instance-of p2, p1, [S

    if-eqz p2, :cond_9

    .line 54
    check-cast p1, [S

    .line 55
    iget-object p2, p0, Lcom/android/tools/r8/internal/S2;->d:Lcom/android/tools/r8/internal/p8;

    array-length v0, p1

    invoke-virtual {p2, v6, v0}, Lcom/android/tools/r8/internal/p8;->c(II)Lcom/android/tools/r8/internal/p8;

    .line 56
    array-length p2, p1

    :goto_2
    if-ge v5, p2, :cond_e

    aget-short v0, p1, v5

    .line 57
    iget-object v2, p0, Lcom/android/tools/r8/internal/S2;->d:Lcom/android/tools/r8/internal/p8;

    iget-object v3, p0, Lcom/android/tools/r8/internal/S2;->b:Lcom/android/tools/r8/internal/jr0;

    .line 58
    invoke-virtual {v3, v1, v0}, Lcom/android/tools/r8/internal/jr0;->a(II)Lcom/android/tools/r8/internal/hr0;

    move-result-object v0

    .line 59
    iget v0, v0, Lcom/android/tools/r8/internal/hr0;->a:I

    invoke-virtual {v2, v4, v0}, Lcom/android/tools/r8/internal/p8;->c(II)Lcom/android/tools/r8/internal/p8;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 60
    :cond_9
    instance-of p2, p1, [C

    if-eqz p2, :cond_a

    .line 61
    check-cast p1, [C

    .line 62
    iget-object p2, p0, Lcom/android/tools/r8/internal/S2;->d:Lcom/android/tools/r8/internal/p8;

    array-length v0, p1

    invoke-virtual {p2, v6, v0}, Lcom/android/tools/r8/internal/p8;->c(II)Lcom/android/tools/r8/internal/p8;

    .line 63
    array-length p2, p1

    :goto_3
    if-ge v5, p2, :cond_e

    aget-char v0, p1, v5

    .line 64
    iget-object v2, p0, Lcom/android/tools/r8/internal/S2;->d:Lcom/android/tools/r8/internal/p8;

    iget-object v4, p0, Lcom/android/tools/r8/internal/S2;->b:Lcom/android/tools/r8/internal/jr0;

    .line 65
    invoke-virtual {v4, v1, v0}, Lcom/android/tools/r8/internal/jr0;->a(II)Lcom/android/tools/r8/internal/hr0;

    move-result-object v0

    .line 66
    iget v0, v0, Lcom/android/tools/r8/internal/hr0;->a:I

    invoke-virtual {v2, v3, v0}, Lcom/android/tools/r8/internal/p8;->c(II)Lcom/android/tools/r8/internal/p8;

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 67
    :cond_a
    instance-of p2, p1, [I

    if-eqz p2, :cond_b

    .line 68
    check-cast p1, [I

    .line 69
    iget-object p2, p0, Lcom/android/tools/r8/internal/S2;->d:Lcom/android/tools/r8/internal/p8;

    array-length v0, p1

    invoke-virtual {p2, v6, v0}, Lcom/android/tools/r8/internal/p8;->c(II)Lcom/android/tools/r8/internal/p8;

    .line 70
    array-length p2, p1

    :goto_4
    if-ge v5, p2, :cond_e

    aget v0, p1, v5

    .line 71
    iget-object v2, p0, Lcom/android/tools/r8/internal/S2;->d:Lcom/android/tools/r8/internal/p8;

    iget-object v3, p0, Lcom/android/tools/r8/internal/S2;->b:Lcom/android/tools/r8/internal/jr0;

    .line 72
    invoke-virtual {v3, v1, v0}, Lcom/android/tools/r8/internal/jr0;->a(II)Lcom/android/tools/r8/internal/hr0;

    move-result-object v0

    .line 73
    iget v0, v0, Lcom/android/tools/r8/internal/hr0;->a:I

    const/16 v3, 0x49

    invoke-virtual {v2, v3, v0}, Lcom/android/tools/r8/internal/p8;->c(II)Lcom/android/tools/r8/internal/p8;

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 74
    :cond_b
    instance-of p2, p1, [J

    if-eqz p2, :cond_c

    .line 75
    check-cast p1, [J

    .line 76
    iget-object p2, p0, Lcom/android/tools/r8/internal/S2;->d:Lcom/android/tools/r8/internal/p8;

    array-length v0, p1

    invoke-virtual {p2, v6, v0}, Lcom/android/tools/r8/internal/p8;->c(II)Lcom/android/tools/r8/internal/p8;

    .line 77
    array-length p2, p1

    :goto_5
    if-ge v5, p2, :cond_e

    aget-wide v0, p1, v5

    .line 78
    iget-object v2, p0, Lcom/android/tools/r8/internal/S2;->d:Lcom/android/tools/r8/internal/p8;

    iget-object v3, p0, Lcom/android/tools/r8/internal/S2;->b:Lcom/android/tools/r8/internal/jr0;

    const/4 v4, 0x5

    .line 79
    invoke-virtual {v3, v4, v0, v1}, Lcom/android/tools/r8/internal/jr0;->a(IJ)Lcom/android/tools/r8/internal/hr0;

    move-result-object v0

    .line 80
    iget v0, v0, Lcom/android/tools/r8/internal/hr0;->a:I

    const/16 v1, 0x4a

    invoke-virtual {v2, v1, v0}, Lcom/android/tools/r8/internal/p8;->c(II)Lcom/android/tools/r8/internal/p8;

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 81
    :cond_c
    instance-of p2, p1, [F

    if-eqz p2, :cond_d

    .line 82
    check-cast p1, [F

    .line 83
    iget-object p2, p0, Lcom/android/tools/r8/internal/S2;->d:Lcom/android/tools/r8/internal/p8;

    array-length v0, p1

    invoke-virtual {p2, v6, v0}, Lcom/android/tools/r8/internal/p8;->c(II)Lcom/android/tools/r8/internal/p8;

    .line 84
    array-length p2, p1

    :goto_6
    if-ge v5, p2, :cond_e

    aget v0, p1, v5

    .line 85
    iget-object v1, p0, Lcom/android/tools/r8/internal/S2;->d:Lcom/android/tools/r8/internal/p8;

    iget-object v2, p0, Lcom/android/tools/r8/internal/S2;->b:Lcom/android/tools/r8/internal/jr0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v0}, Lcom/android/tools/r8/internal/jr0;->a(II)Lcom/android/tools/r8/internal/hr0;

    move-result-object v0

    .line 87
    iget v0, v0, Lcom/android/tools/r8/internal/hr0;->a:I

    const/16 v2, 0x46

    invoke-virtual {v1, v2, v0}, Lcom/android/tools/r8/internal/p8;->c(II)Lcom/android/tools/r8/internal/p8;

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 88
    :cond_d
    instance-of p2, p1, [D

    if-eqz p2, :cond_f

    .line 89
    check-cast p1, [D

    .line 90
    iget-object p2, p0, Lcom/android/tools/r8/internal/S2;->d:Lcom/android/tools/r8/internal/p8;

    array-length v0, p1

    invoke-virtual {p2, v6, v0}, Lcom/android/tools/r8/internal/p8;->c(II)Lcom/android/tools/r8/internal/p8;

    .line 91
    array-length p2, p1

    :goto_7
    if-ge v5, p2, :cond_e

    aget-wide v0, p1, v5

    .line 92
    iget-object v2, p0, Lcom/android/tools/r8/internal/S2;->d:Lcom/android/tools/r8/internal/p8;

    iget-object v3, p0, Lcom/android/tools/r8/internal/S2;->b:Lcom/android/tools/r8/internal/jr0;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const/4 v4, 0x6

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/tools/r8/internal/jr0;->a(IJ)Lcom/android/tools/r8/internal/hr0;

    move-result-object v0

    .line 94
    iget v0, v0, Lcom/android/tools/r8/internal/hr0;->a:I

    const/16 v1, 0x44

    invoke-virtual {v2, v1, v0}, Lcom/android/tools/r8/internal/p8;->c(II)Lcom/android/tools/r8/internal/p8;

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_e
    return-void

    .line 95
    :cond_f
    iget-object p2, p0, Lcom/android/tools/r8/internal/S2;->b:Lcom/android/tools/r8/internal/jr0;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/Object;)Lcom/android/tools/r8/internal/hr0;

    move-result-object p1

    .line 96
    iget-object p2, p0, Lcom/android/tools/r8/internal/S2;->d:Lcom/android/tools/r8/internal/p8;

    iget v0, p1, Lcom/android/tools/r8/internal/hr0;->b:I

    const-string v1, ".s.IFJDCS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iget p1, p1, Lcom/android/tools/r8/internal/hr0;->a:I

    invoke-virtual {p2, v0, p1}, Lcom/android/tools/r8/internal/p8;->c(II)Lcom/android/tools/r8/internal/p8;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 97
    iget v0, p0, Lcom/android/tools/r8/internal/S2;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/tools/r8/internal/S2;->f:I

    .line 98
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/S2;->c:Z

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/tools/r8/internal/S2;->d:Lcom/android/tools/r8/internal/p8;

    iget-object v1, p0, Lcom/android/tools/r8/internal/S2;->b:Lcom/android/tools/r8/internal/jr0;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    .line 100
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/S2;->d:Lcom/android/tools/r8/internal/p8;

    iget-object v0, p0, Lcom/android/tools/r8/internal/S2;->b:Lcom/android/tools/r8/internal/jr0;

    .line 101
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    move-result p2

    const/16 v0, 0x65

    invoke-virtual {p1, v0, p2}, Lcom/android/tools/r8/internal/p8;->c(II)Lcom/android/tools/r8/internal/p8;

    move-result-object p1

    iget-object p2, p0, Lcom/android/tools/r8/internal/S2;->b:Lcom/android/tools/r8/internal/jr0;

    .line 102
    invoke-virtual {p2, p3}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    return-void
.end method

.method public final b(Ljava/lang/String;)I
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/S2;->b:Lcom/android/tools/r8/internal/jr0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    :cond_0
    const/16 p1, 0x8

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/tools/r8/internal/S2;->d:Lcom/android/tools/r8/internal/p8;

    iget v1, v1, Lcom/android/tools/r8/internal/p8;->b:I

    add-int/2addr p1, v1

    iget-object v0, v0, Lcom/android/tools/r8/internal/S2;->g:Lcom/android/tools/r8/internal/S2;

    goto :goto_0

    :cond_1
    return p1
.end method
