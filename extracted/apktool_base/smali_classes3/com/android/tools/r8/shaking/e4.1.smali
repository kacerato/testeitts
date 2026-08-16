.class public final Lcom/android/tools/r8/shaking/e4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/android/tools/r8/shaking/e4;->a:Z

    iput-object p1, p0, Lcom/android/tools/r8/shaking/e4;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(IILjava/lang/String;Ljava/lang/String;)Z
    .locals 6

    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge p0, v0, :cond_d

    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x2a

    const/16 v4, 0x2f

    if-eq v0, v3, :cond_5

    const/16 v2, 0x3f

    if-eq v0, v2, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-eq p1, v2, :cond_1

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p3, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-eq v0, p1, :cond_0

    goto :goto_1

    :cond_0
    move p1, v2

    goto :goto_6

    :cond_1
    :goto_1
    return v1

    :cond_2
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-eq p1, v0, :cond_4

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p3, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-ne p1, v4, :cond_3

    goto :goto_2

    :cond_3
    move p1, v0

    goto :goto_6

    :cond_4
    :goto_2
    return v1

    :cond_5
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v5, p0, 0x1

    if-le v0, v5, :cond_6

    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_6

    move v0, v2

    goto :goto_3

    :cond_6
    move v0, v1

    :goto_3
    if-eqz v0, :cond_7

    const/4 v3, 0x2

    goto :goto_4

    :cond_7
    move v3, v2

    :goto_4
    add-int/2addr v3, p0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v3, v5, :cond_9

    if-nez v0, :cond_8

    invoke-virtual {p3, v4, p1}, Ljava/lang/String;->indexOf(II)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_8

    return v1

    :cond_8
    return v2

    :cond_9
    move v1, p1

    :goto_5
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_c

    if-nez v0, :cond_a

    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v4, :cond_a

    invoke-static {v3, v1, p2, p3}, Lcom/android/tools/r8/shaking/e4;->a(IILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_a
    invoke-static {v3, v1, p2, p3}, Lcom/android/tools/r8/shaking/e4;->a(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    return v2

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_c
    :goto_6
    add-int/lit8 p0, p0, 0x1

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p0

    if-ne p1, p0, :cond_e

    return v2

    :cond_e
    return v1
.end method
