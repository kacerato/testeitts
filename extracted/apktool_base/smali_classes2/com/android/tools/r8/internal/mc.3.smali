.class public abstract Lcom/android/tools/r8/internal/mc;
.super Lcom/android/tools/r8/internal/ge;
.source "SourceFile"


# instance fields
.field public final c:Z

.field public d:I

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Ljava/lang/String;

.field public k:Z

.field public final l:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Cd;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/ge;-><init>(Lcom/android/tools/r8/internal/Cd;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/mc;->l:Ljava/util/HashMap;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/tools/r8/internal/mc;->c:Z

    return-void
.end method

.method public static a(ILjava/lang/String;)I
    .locals 8

    const/16 v0, 0x4c

    .line 153
    invoke-static {p1, v0, p0}, Lcom/android/tools/r8/internal/mc;->a(Ljava/lang/String;CI)I

    move-result p0

    .line 154
    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/mc;->c(ILjava/lang/String;)I

    move-result p0

    .line 155
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-ge p0, v0, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_1

    :cond_0
    move v0, v1

    :goto_1
    const/16 v2, 0x2f

    if-ne v0, v2, :cond_1

    add-int/lit8 p0, p0, 0x1

    .line 156
    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/mc;->c(ILjava/lang/String;)I

    move-result p0

    goto :goto_0

    .line 157
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p0, v0, :cond_2

    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    const/16 v2, 0x3e

    const/16 v3, 0x2d

    const/16 v4, 0x2b

    const/16 v5, 0x2a

    const/16 v6, 0x3c

    if-ne v0, v6, :cond_a

    .line 158
    invoke-static {p1, v6, p0}, Lcom/android/tools/r8/internal/mc;->a(Ljava/lang/String;CI)I

    move-result p0

    .line 159
    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/mc;->e(ILjava/lang/String;)C

    move-result v0

    if-ne v0, v5, :cond_3

    goto :goto_5

    :cond_3
    if-eq v0, v4, :cond_4

    if-ne v0, v3, :cond_5

    :cond_4
    add-int/lit8 p0, p0, 0x1

    .line 160
    :cond_5
    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/mc;->b(ILjava/lang/String;)I

    move-result p0

    .line 161
    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p0, v0, :cond_6

    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_4

    :cond_6
    move v0, v1

    :goto_4
    if-eq v0, v2, :cond_14

    .line 162
    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/mc;->e(ILjava/lang/String;)C

    move-result v0

    if-ne v0, v5, :cond_7

    :goto_5
    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_7
    if-eq v0, v4, :cond_8

    if-ne v0, v3, :cond_9

    :cond_8
    add-int/lit8 p0, p0, 0x1

    .line 163
    :cond_9
    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/mc;->b(ILjava/lang/String;)I

    move-result p0

    goto :goto_3

    .line 164
    :cond_a
    :goto_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p0, v0, :cond_b

    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_7

    :cond_b
    move v0, v1

    :goto_7
    const/16 v7, 0x2e

    if-ne v0, v7, :cond_15

    add-int/lit8 p0, p0, 0x1

    .line 165
    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/mc;->c(ILjava/lang/String;)I

    move-result p0

    .line 166
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p0, v0, :cond_c

    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_8

    :cond_c
    move v0, v1

    :goto_8
    if-ne v0, v6, :cond_a

    .line 167
    invoke-static {p1, v6, p0}, Lcom/android/tools/r8/internal/mc;->a(Ljava/lang/String;CI)I

    move-result p0

    .line 168
    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/mc;->e(ILjava/lang/String;)C

    move-result v0

    if-ne v0, v5, :cond_d

    goto :goto_b

    :cond_d
    if-eq v0, v4, :cond_e

    if-ne v0, v3, :cond_f

    :cond_e
    add-int/lit8 p0, p0, 0x1

    .line 169
    :cond_f
    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/mc;->b(ILjava/lang/String;)I

    move-result p0

    .line 170
    :goto_9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p0, v0, :cond_10

    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_a

    :cond_10
    move v0, v1

    :goto_a
    if-eq v0, v2, :cond_14

    .line 171
    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/mc;->e(ILjava/lang/String;)C

    move-result v0

    if-ne v0, v5, :cond_11

    :goto_b
    add-int/lit8 p0, p0, 0x1

    goto :goto_9

    :cond_11
    if-eq v0, v4, :cond_12

    if-ne v0, v3, :cond_13

    :cond_12
    add-int/lit8 p0, p0, 0x1

    .line 172
    :cond_13
    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/mc;->b(ILjava/lang/String;)I

    move-result p0

    goto :goto_9

    :cond_14
    add-int/lit8 p0, p0, 0x1

    goto :goto_6

    :cond_15
    const/16 v0, 0x3b

    .line 173
    invoke-static {p1, v0, p0}, Lcom/android/tools/r8/internal/mc;->a(Ljava/lang/String;CI)I

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;CI)I
    .locals 2

    .line 174
    invoke-static {p2, p0}, Lcom/android/tools/r8/internal/mc;->e(ILjava/lang/String;)C

    move-result v0

    if-ne v0, p1, :cond_0

    add-int/lit8 p2, p2, 0x1

    return p2

    .line 175
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": \'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "\' expected at index "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 177
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(I)V
    .locals 2

    ushr-int/lit8 v0, p0, 0x18

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_0
    const v0, -0xffff01

    goto :goto_0

    :pswitch_1
    const/high16 v0, -0x1000000

    goto :goto_0

    :pswitch_2
    const/16 v0, -0x100

    goto :goto_0

    :cond_0
    :pswitch_3
    const/high16 v0, -0x10000

    :goto_0
    if-eqz v0, :cond_1

    not-int v0, v0

    and-int/2addr v0, p0

    if-nez v0, :cond_1

    return-void

    .line 178
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 179
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    .line 180
    const-string v1, "Invalid type reference 0x"

    invoke-static {v1, p0}, Lcom/android/tools/r8/internal/Ee0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 181
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

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
    .packed-switch 0x40
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static a(II)V
    .locals 1

    not-int p1, p1

    and-int/2addr p1, p0

    if-nez p1, :cond_2

    and-int/lit8 p1, p0, 0x7

    .line 142
    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    move-result p1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_1

    and-int/lit16 p1, p0, 0x410

    .line 143
    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    move-result p1

    if-gt p1, v0, :cond_0

    return-void

    .line 144
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 145
    const-string v0, "final and abstract are mutually exclusive: "

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/T60;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 146
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 147
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 148
    const-string v0, "public, protected and private are mutually exclusive: "

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/T60;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 149
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 150
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 151
    const-string v0, "Invalid access flags: "

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/T60;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 152
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static b(ILjava/lang/String;)I
    .locals 3

    .line 32
    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/mc;->e(ILjava/lang/String;)C

    move-result v0

    const/16 v1, 0x4c

    if-eq v0, v1, :cond_2

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_0

    const/16 v0, 0x54

    .line 33
    invoke-static {p1, v0, p0}, Lcom/android/tools/r8/internal/mc;->a(Ljava/lang/String;CI)I

    move-result p0

    .line 34
    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/mc;->c(ILjava/lang/String;)I

    move-result p0

    const/16 v0, 0x3b

    .line 35
    invoke-static {p1, v0, p0}, Lcom/android/tools/r8/internal/mc;->a(Ljava/lang/String;CI)I

    move-result p0

    return p0

    :cond_0
    add-int/lit8 v0, p0, 0x1

    .line 36
    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/mc;->e(ILjava/lang/String;)C

    move-result v1

    const/16 v2, 0x46

    if-eq v1, v2, :cond_1

    const/16 v2, 0x53

    if-eq v1, v2, :cond_1

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_1

    const/16 v2, 0x49

    if-eq v1, v2, :cond_1

    const/16 v2, 0x4a

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    .line 37
    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/mc;->b(ILjava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    :pswitch_0
    add-int/lit8 p0, p0, 0x2

    return p0

    .line 38
    :cond_2
    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/mc;->a(ILjava/lang/String;)I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static b(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x2e

    .line 26
    :try_start_0
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    .line 27
    invoke-static {p0, p1, v0, v1, v3}, Lcom/android/tools/r8/internal/sc;->a(ILjava/lang/String;IILjava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 28
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0, p1, v0, v1, v3}, Lcom/android/tools/r8/internal/sc;->a(ILjava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 29
    :goto_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " (must be a fully qualified name): "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 31
    invoke-direct {v0, p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static c(ILjava/lang/String;)I
    .locals 3

    move v0, p0

    .line 4
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    const-string v2, ".;[/<>:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    .line 5
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v0

    goto :goto_0

    :cond_0
    if-eq v0, p0, :cond_1

    return v0

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": identifier expected at index "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 8
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static d(ILjava/lang/String;)I
    .locals 4

    .line 6
    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/mc;->c(ILjava/lang/String;)I

    move-result p0

    const/16 v0, 0x3a

    .line 7
    invoke-static {p1, v0, p0}, Lcom/android/tools/r8/internal/mc;->a(Ljava/lang/String;CI)I

    move-result p0

    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-ge p0, v1, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 9
    :goto_0
    const-string v3, "L[T"

    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 10
    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/mc;->b(ILjava/lang/String;)I

    move-result p0

    .line 11
    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p0, v1, :cond_2

    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    if-ne v1, v0, :cond_3

    add-int/lit8 p0, p0, 0x1

    .line 12
    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/mc;->b(ILjava/lang/String;)I

    move-result p0

    goto :goto_1

    :cond_3
    return p0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p0}, Lcom/android/tools/r8/internal/mc;->b(ILjava/lang/String;)I

    move-result v0

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": error at index "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static e(ILjava/lang/String;)C
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p0, v0, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/16 v0, 0x2f

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    .line 4
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3b

    if-ne v3, v4, :cond_1

    add-int/lit8 v2, v2, -0x1

    :cond_1
    const/16 v3, 0x5b

    .line 5
    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-ne v3, v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 6
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 8
    invoke-static {v1, p0}, Lcom/android/tools/r8/internal/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/android/tools/r8/internal/DX;
    .locals 10

    .line 80
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/mc;->b()V

    .line 81
    iget v0, p0, Lcom/android/tools/r8/internal/mc;->d:I

    const v1, 0x29dff

    .line 82
    invoke-static {p1, v1}, Lcom/android/tools/r8/internal/mc;->a(II)V

    const v1, 0xffff

    and-int/2addr v0, v1

    const/16 v1, 0x3d

    const/4 v2, 0x1

    if-ge v0, v1, :cond_1

    and-int/lit16 v0, p1, 0xc00

    .line 83
    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    if-gt v0, v2, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 85
    const-string p3, "strictfp and abstract are mutually exclusive: "

    invoke-static {p1, p3}, Lcom/android/tools/r8/internal/T60;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 86
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 87
    :cond_1
    :goto_0
    const-string v0, "<init>"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "<clinit>"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 88
    iget v0, p0, Lcom/android/tools/r8/internal/mc;->d:I

    const-string v1, "method name"

    invoke-static {v0, p2, v1}, Lcom/android/tools/r8/internal/sc;->c(ILjava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_2
    iget v0, p0, Lcom/android/tools/r8/internal/mc;->d:I

    invoke-static {v0, p3}, Lcom/android/tools/r8/internal/sc;->e(ILjava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p4, :cond_14

    .line 90
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_1

    :cond_3
    move v1, v0

    :goto_1
    const/16 v3, 0x3c

    if-ne v1, v3, :cond_6

    .line 91
    invoke-static {p4, v3, v0}, Lcom/android/tools/r8/internal/mc;->a(Ljava/lang/String;CI)I

    move-result v1

    .line 92
    invoke-static {v1, p4}, Lcom/android/tools/r8/internal/mc;->d(ILjava/lang/String;)I

    move-result v1

    .line 93
    :goto_2
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_4

    invoke-virtual {p4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_3

    :cond_4
    move v3, v0

    :goto_3
    const/16 v4, 0x3e

    if-eq v3, v4, :cond_5

    .line 94
    invoke-static {v1, p4}, Lcom/android/tools/r8/internal/mc;->d(ILjava/lang/String;)I

    move-result v1

    goto :goto_2

    :cond_5
    add-int/2addr v1, v2

    goto :goto_4

    :cond_6
    move v1, v0

    :goto_4
    const/16 v3, 0x28

    .line 95
    invoke-static {p4, v3, v1}, Lcom/android/tools/r8/internal/mc;->a(Ljava/lang/String;CI)I

    move-result v1

    .line 96
    :goto_5
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_7

    invoke-virtual {p4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_6

    :cond_7
    move v3, v0

    .line 97
    :goto_6
    const-string v4, "ZCBSIFJDL[T"

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    const/16 v5, 0x4a

    const/16 v6, 0x49

    const/16 v7, 0x5a

    const/16 v8, 0x53

    const/16 v9, 0x46

    if-eq v3, v4, :cond_a

    .line 98
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_8

    invoke-virtual {p4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_7

    :cond_8
    move v3, v0

    :goto_7
    if-eq v3, v9, :cond_9

    if-eq v3, v8, :cond_9

    if-eq v3, v7, :cond_9

    if-eq v3, v6, :cond_9

    if-eq v3, v5, :cond_9

    packed-switch v3, :pswitch_data_0

    .line 99
    invoke-static {v1, p4}, Lcom/android/tools/r8/internal/mc;->b(ILjava/lang/String;)I

    move-result v1

    goto :goto_5

    :cond_9
    :pswitch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_a
    const/16 v3, 0x29

    .line 100
    invoke-static {p4, v3, v1}, Lcom/android/tools/r8/internal/mc;->a(Ljava/lang/String;CI)I

    move-result v1

    .line 101
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_b

    invoke-virtual {p4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_8

    :cond_b
    move v3, v0

    :goto_8
    const/16 v4, 0x56

    if-ne v3, v4, :cond_c

    goto :goto_a

    .line 102
    :cond_c
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_d

    invoke-virtual {p4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_9

    :cond_d
    move v3, v0

    :goto_9
    if-eq v3, v9, :cond_e

    if-eq v3, v8, :cond_e

    if-eq v3, v7, :cond_e

    if-eq v3, v6, :cond_e

    if-eq v3, v5, :cond_e

    packed-switch v3, :pswitch_data_1

    .line 103
    invoke-static {v1, p4}, Lcom/android/tools/r8/internal/mc;->b(ILjava/lang/String;)I

    move-result v1

    goto :goto_b

    :cond_e
    :goto_a
    :pswitch_1
    add-int/2addr v1, v2

    .line 104
    :goto_b
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_f

    invoke-virtual {p4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_c

    :cond_f
    move v2, v0

    :goto_c
    const/16 v3, 0x5e

    if-ne v2, v3, :cond_12

    add-int/lit8 v1, v1, 0x1

    .line 105
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_10

    invoke-virtual {p4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_d

    :cond_10
    move v2, v0

    :goto_d
    const/16 v3, 0x4c

    if-ne v2, v3, :cond_11

    .line 106
    invoke-static {v1, p4}, Lcom/android/tools/r8/internal/mc;->a(ILjava/lang/String;)I

    move-result v1

    goto :goto_b

    :cond_11
    const/16 v2, 0x54

    .line 107
    invoke-static {p4, v2, v1}, Lcom/android/tools/r8/internal/mc;->a(Ljava/lang/String;CI)I

    move-result v1

    .line 108
    invoke-static {v1, p4}, Lcom/android/tools/r8/internal/mc;->c(ILjava/lang/String;)I

    move-result v1

    const/16 v2, 0x3b

    .line 109
    invoke-static {p4, v2, v1}, Lcom/android/tools/r8/internal/mc;->a(Ljava/lang/String;CI)I

    move-result v1

    goto :goto_b

    .line 110
    :cond_12
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_13

    goto :goto_e

    .line 111
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 112
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": error at index "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 113
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_14
    :goto_e
    if-eqz p5, :cond_15

    .line 114
    :goto_f
    array-length v1, p5

    if-ge v0, v1, :cond_15

    .line 115
    iget v1, p0, Lcom/android/tools/r8/internal/mc;->d:I

    aget-object v2, p5, v0

    .line 116
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "exception name at index "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 117
    invoke-static {v1, v2, v3}, Lcom/android/tools/r8/internal/sc;->b(ILjava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 118
    :cond_15
    invoke-super/range {p0 .. p5}, Lcom/android/tools/r8/internal/ge;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/android/tools/r8/internal/DX;

    move-result-object v6

    .line 119
    iget-boolean p4, p0, Lcom/android/tools/r8/internal/mc;->c:Z

    if-eqz p4, :cond_16

    .line 120
    new-instance p4, Lcom/android/tools/r8/internal/sc;

    iget p5, p0, Lcom/android/tools/r8/internal/ge;->a:I

    iget-object v0, p0, Lcom/android/tools/r8/internal/mc;->l:Ljava/util/HashMap;

    .line 121
    new-instance v7, Lcom/android/tools/r8/internal/pc;

    move-object v1, v7

    move v2, p5

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/tools/r8/internal/pc;-><init>(IILjava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/DX;)V

    invoke-direct {p4, p5, v7, v0}, Lcom/android/tools/r8/internal/sc;-><init>(ILcom/android/tools/r8/internal/DX;Ljava/util/HashMap;)V

    .line 122
    iput p1, p4, Lcom/android/tools/r8/internal/sc;->d:I

    goto :goto_10

    .line 123
    :cond_16
    new-instance p4, Lcom/android/tools/r8/internal/sc;

    iget p1, p0, Lcom/android/tools/r8/internal/ge;->a:I

    iget-object p2, p0, Lcom/android/tools/r8/internal/mc;->l:Ljava/util/HashMap;

    invoke-direct {p4, p1, v6, p2}, Lcom/android/tools/r8/internal/sc;-><init>(ILcom/android/tools/r8/internal/DX;Ljava/util/HashMap;)V

    .line 124
    :goto_10
    iget p1, p0, Lcom/android/tools/r8/internal/mc;->d:I

    iput p1, p4, Lcom/android/tools/r8/internal/sc;->c:I

    return-object p4

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x42
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final a(ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;
    .locals 2

    .line 128
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/mc;->b()V

    ushr-int/lit8 v0, p1, 0x18

    if-eqz v0, :cond_1

    const/16 v1, 0x11

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 130
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    .line 131
    const-string p3, "Invalid type reference sort 0x"

    invoke-static {p3, p2}, Lcom/android/tools/r8/internal/Ee0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 132
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 133
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/android/tools/r8/internal/mc;->a(I)V

    .line 134
    iget v0, p0, Lcom/android/tools/r8/internal/mc;->d:I

    invoke-static {v0, p3}, Lcom/android/tools/r8/internal/sc;->d(ILjava/lang/String;)V

    .line 135
    new-instance v0, Lcom/android/tools/r8/internal/hc;

    .line 136
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/ge;->a(ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/hc;-><init>(Lcom/android/tools/r8/internal/Q2;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;
    .locals 1

    .line 125
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/mc;->b()V

    .line 126
    iget v0, p0, Lcom/android/tools/r8/internal/mc;->d:I

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/sc;->d(ILjava/lang/String;)V

    .line 127
    new-instance v0, Lcom/android/tools/r8/internal/hc;

    invoke-super {p0, p1, p2}, Lcom/android/tools/r8/internal/ge;->a(Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/hc;-><init>(Lcom/android/tools/r8/internal/Q2;)V

    return-object v0
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/internal/TX;
    .locals 3

    .line 38
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/mc;->b()V

    .line 39
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/mc;->f:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/mc;->f:Z

    .line 41
    iget v1, p0, Lcom/android/tools/r8/internal/mc;->d:I

    const-string v2, "module name"

    invoke-static {v1, p2, v2}, Lcom/android/tools/r8/internal/mc;->b(ILjava/lang/String;Ljava/lang/String;)V

    const v1, 0x9020

    .line 42
    invoke-static {p1, v1}, Lcom/android/tools/r8/internal/mc;->a(II)V

    .line 43
    new-instance v1, Lcom/android/tools/r8/internal/uc;

    iget v2, p0, Lcom/android/tools/r8/internal/ge;->a:I

    .line 44
    invoke-super {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/ge;->a(ILjava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/internal/TX;

    move-result-object p2

    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {v1, v2, p2, v0}, Lcom/android/tools/r8/internal/uc;-><init>(ILcom/android/tools/r8/internal/TX;Z)V

    .line 45
    iget p1, p0, Lcom/android/tools/r8/internal/mc;->d:I

    iput p1, v1, Lcom/android/tools/r8/internal/uc;->h:I

    return-object v1

    .line 46
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "visitModule can be called only once."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/android/tools/r8/internal/Uw;
    .locals 4

    .line 69
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/mc;->b()V

    const v0, 0x2d0df

    .line 70
    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/mc;->a(II)V

    .line 71
    iget v0, p0, Lcom/android/tools/r8/internal/mc;->d:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 72
    const-string v3, "field name"

    invoke-static {v0, p2, v1, v2, v3}, Lcom/android/tools/r8/internal/sc;->a(ILjava/lang/String;IILjava/lang/String;)V

    .line 73
    iget v0, p0, Lcom/android/tools/r8/internal/mc;->d:I

    invoke-static {v0, p3}, Lcom/android/tools/r8/internal/sc;->d(ILjava/lang/String;)V

    if-eqz p4, :cond_0

    .line 74
    invoke-static {p4}, Lcom/android/tools/r8/internal/mc;->d(Ljava/lang/String;)V

    :cond_0
    if-eqz p5, :cond_2

    .line 75
    instance-of v0, p5, Ljava/lang/Integer;

    if-nez v0, :cond_2

    instance-of v0, p5, Ljava/lang/Float;

    if-nez v0, :cond_2

    instance-of v0, p5, Ljava/lang/Long;

    if-nez v0, :cond_2

    instance-of v0, p5, Ljava/lang/Double;

    if-nez v0, :cond_2

    instance-of v0, p5, Ljava/lang/String;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 76
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 77
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Invalid constant: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 78
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 79
    :cond_2
    :goto_0
    new-instance v0, Lcom/android/tools/r8/internal/nc;

    iget v1, p0, Lcom/android/tools/r8/internal/ge;->a:I

    invoke-super/range {p0 .. p5}, Lcom/android/tools/r8/internal/ge;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/android/tools/r8/internal/Uw;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/android/tools/r8/internal/nc;-><init>(ILcom/android/tools/r8/internal/Uw;)V

    return-object v0
.end method

.method public final a()V
    .locals 1

    .line 140
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/mc;->b()V

    const/4 v0, 0x1

    .line 141
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/mc;->k:Z

    return-void
.end method

.method public final a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/mc;->e:Z

    if-nez v0, :cond_11

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/mc;->e:Z

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/mc;->b()V

    const v1, 0x3f631

    .line 4
    invoke-static {p2, v1}, Lcom/android/tools/r8/internal/mc;->a(II)V

    if-eqz p3, :cond_10

    .line 5
    const-string v1, "package-info"

    invoke-virtual {p3, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "module-info"

    if-nez v1, :cond_0

    invoke-virtual {p3, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    const-string v1, "class name"

    invoke-static {p1, p3, v1}, Lcom/android/tools/r8/internal/sc;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_0
    const-string v1, "java/lang/Object"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez p5, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The super class name of the Object class must be \'null\'"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_2
    invoke-virtual {p3, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-nez p5, :cond_3

    goto :goto_0

    .line 10
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The super class name of a module-info class must be \'null\'"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_4
    const-string v2, "super class name"

    invoke-static {p1, p5, v2}, Lcom/android/tools/r8/internal/sc;->b(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v2, 0x0

    if-eqz p4, :cond_c

    .line 12
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    invoke-virtual {p4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_1

    :cond_5
    move v3, v2

    :goto_1
    const/16 v4, 0x3c

    if-ne v3, v4, :cond_8

    .line 13
    invoke-static {p4, v4, v2}, Lcom/android/tools/r8/internal/mc;->a(Ljava/lang/String;CI)I

    move-result v3

    .line 14
    invoke-static {v3, p4}, Lcom/android/tools/r8/internal/mc;->d(ILjava/lang/String;)I

    move-result v3

    .line 15
    :goto_2
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_6

    invoke-virtual {p4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_3

    :cond_6
    move v4, v2

    :goto_3
    const/16 v5, 0x3e

    if-eq v4, v5, :cond_7

    .line 16
    invoke-static {v3, p4}, Lcom/android/tools/r8/internal/mc;->d(ILjava/lang/String;)I

    move-result v3

    goto :goto_2

    :cond_7
    add-int/2addr v3, v0

    goto :goto_4

    :cond_8
    move v3, v2

    .line 17
    :goto_4
    invoke-static {v3, p4}, Lcom/android/tools/r8/internal/mc;->a(ILjava/lang/String;)I

    move-result v0

    .line 18
    :goto_5
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_9

    invoke-virtual {p4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_6

    :cond_9
    move v3, v2

    :goto_6
    const/16 v4, 0x4c

    if-ne v3, v4, :cond_a

    .line 19
    invoke-static {v0, p4}, Lcom/android/tools/r8/internal/mc;->a(ILjava/lang/String;)I

    move-result v0

    goto :goto_5

    .line 20
    :cond_a
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v0, v3, :cond_b

    goto :goto_7

    .line 21
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 22
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": error at index "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 23
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    :goto_7
    and-int/lit16 v0, p2, 0x200

    if-eqz v0, :cond_e

    .line 24
    invoke-virtual {v1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_8

    .line 25
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The super class name of interfaces must be \'java/lang/Object\'"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :cond_e
    :goto_8
    array-length v0, p6

    if-ge v2, v0, :cond_f

    .line 27
    aget-object v0, p6, v2

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "interface name at index "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 29
    invoke-static {p1, v0, v1}, Lcom/android/tools/r8/internal/sc;->b(ILjava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 30
    :cond_f
    iput p1, p0, Lcom/android/tools/r8/internal/mc;->d:I

    .line 31
    invoke-super/range {p0 .. p6}, Lcom/android/tools/r8/internal/ge;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    .line 32
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal class name (null)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :cond_11
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "visit must be called only once"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 61
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/mc;->b()V

    .line 62
    iget v0, p0, Lcom/android/tools/r8/internal/mc;->d:I

    const-string v1, "class name"

    invoke-static {v0, p2, v1}, Lcom/android/tools/r8/internal/sc;->b(ILjava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 63
    iget v0, p0, Lcom/android/tools/r8/internal/mc;->d:I

    const-string v1, "outer class name"

    invoke-static {v0, p3, v1}, Lcom/android/tools/r8/internal/sc;->b(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p4, :cond_3

    const/4 v0, 0x0

    .line 64
    :goto_0
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 65
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 66
    :cond_2
    iget v1, p0, Lcom/android/tools/r8/internal/mc;->d:I

    const/4 v2, -0x1

    const-string v3, "inner class name"

    invoke-static {v1, p4, v0, v2, v3}, Lcom/android/tools/r8/internal/sc;->a(ILjava/lang/String;IILjava/lang/String;)V

    :cond_3
    const/16 v0, 0x761f

    .line 67
    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/mc;->a(II)V

    .line 68
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/ge;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/K4;)V
    .locals 1

    .line 137
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/mc;->b()V

    .line 138
    iget-object v0, p0, Lcom/android/tools/r8/internal/ge;->b:Lcom/android/tools/r8/internal/Cd;

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Cd;->a(Lcom/android/tools/r8/internal/K4;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 47
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/mc;->b()V

    .line 48
    iget v0, p0, Lcom/android/tools/r8/internal/mc;->d:I

    const-string v1, "nestHost"

    invoke-static {v0, p1, v1}, Lcom/android/tools/r8/internal/sc;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/mc;->i:Z

    if-nez v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/android/tools/r8/internal/mc;->j:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/mc;->i:Z

    .line 52
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/ge;->a(Ljava/lang/String;)V

    return-void

    .line 53
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "visitNestHost and visitNestMember are mutually exclusive."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 54
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "visitNestHost can be called only once."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/mc;->b()V

    .line 35
    iget-boolean p1, p0, Lcom/android/tools/r8/internal/mc;->g:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 36
    iput-boolean p1, p0, Lcom/android/tools/r8/internal/mc;->g:Z

    return-void

    .line 37
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "visitSource can be called only once."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 55
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/mc;->b()V

    .line 56
    iget-boolean p2, p0, Lcom/android/tools/r8/internal/mc;->h:Z

    if-nez p2, :cond_2

    const/4 p2, 0x1

    .line 57
    iput-boolean p2, p0, Lcom/android/tools/r8/internal/mc;->h:Z

    if-eqz p1, :cond_1

    if-eqz p3, :cond_0

    .line 58
    iget p1, p0, Lcom/android/tools/r8/internal/mc;->d:I

    invoke-static {p1, p3}, Lcom/android/tools/r8/internal/sc;->e(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 59
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal outer class owner"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 60
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "visitOuterClass can be called only once."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/internal/hc0;
    .locals 4

    .line 15
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/mc;->b()V

    .line 16
    iget v0, p0, Lcom/android/tools/r8/internal/mc;->d:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 17
    const-string v3, "record component name"

    invoke-static {v0, p1, v1, v2, v3}, Lcom/android/tools/r8/internal/sc;->a(ILjava/lang/String;IILjava/lang/String;)V

    .line 18
    iget v0, p0, Lcom/android/tools/r8/internal/mc;->d:I

    invoke-static {v0, p2}, Lcom/android/tools/r8/internal/sc;->d(ILjava/lang/String;)V

    if-eqz p3, :cond_0

    .line 19
    invoke-static {p3}, Lcom/android/tools/r8/internal/mc;->d(Ljava/lang/String;)V

    .line 20
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/yc;

    iget v1, p0, Lcom/android/tools/r8/internal/ge;->a:I

    .line 21
    invoke-super {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/ge;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/internal/hc0;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/android/tools/r8/internal/yc;-><init>(ILcom/android/tools/r8/internal/hc0;)V

    return-object v0
.end method

.method public final b()V
    .locals 2

    .line 22
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/mc;->e:Z

    if-eqz v0, :cond_1

    .line 23
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/mc;->k:Z

    if-nez v0, :cond_0

    return-void

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot visit member after visitEnd has been called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot visit member before visit has been called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/mc;->b()V

    .line 2
    iget v0, p0, Lcom/android/tools/r8/internal/mc;->d:I

    const-string v1, "nestMember"

    invoke-static {v0, p1, v1}, Lcom/android/tools/r8/internal/sc;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/mc;->i:Z

    if-nez v0, :cond_3

    const/16 v0, 0x2f

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 5
    const-string v0, ""

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 7
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/mc;->j:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 8
    iput-object v0, p0, Lcom/android/tools/r8/internal/mc;->j:Ljava/lang/String;

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    :goto_1
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/ge;->b(Ljava/lang/String;)V

    return-void

    .line 11
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lcom/android/tools/r8/internal/mc;->j:Ljava/lang/String;

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "nest member "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " should be in the package "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "visitMemberOfNest and visitNestHost are mutually exclusive."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/mc;->b()V

    .line 2
    iget v0, p0, Lcom/android/tools/r8/internal/mc;->d:I

    const-string v1, "permittedSubclass"

    invoke-static {v0, p1, v1}, Lcom/android/tools/r8/internal/sc;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/ge;->c(Ljava/lang/String;)V

    return-void
.end method
