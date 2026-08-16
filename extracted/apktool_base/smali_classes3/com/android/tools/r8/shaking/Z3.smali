.class public Lcom/android/tools/r8/shaking/Z3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/Z3;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(IILjava/lang/String;Ljava/lang/String;)Z
    .locals 6

    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge p0, v0, :cond_e

    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x2a

    const/16 v4, 0x2e

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

    goto :goto_2

    :cond_1
    :goto_1
    return v1

    :cond_2
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-eq p1, v0, :cond_4

    invoke-virtual {p3, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 p1, p1, 0x1

    :goto_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_4
    :goto_3
    return v1

    :cond_5
    add-int/lit8 v0, p0, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v0, :cond_6

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v3, :cond_6

    move v3, v2

    goto :goto_4

    :cond_6
    move v3, v1

    :goto_4
    if-eqz v3, :cond_7

    add-int/lit8 v0, p0, 0x2

    :cond_7
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    if-ne v0, p0, :cond_a

    if-eqz v3, :cond_8

    return v2

    :cond_8
    invoke-virtual {p3, v4, p1}, Ljava/lang/String;->indexOf(II)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_9

    move v1, v2

    :cond_9
    xor-int/lit8 p0, v1, 0x1

    return p0

    :cond_a
    :goto_5
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p0

    if-ge p1, p0, :cond_d

    if-nez v3, :cond_b

    invoke-virtual {p3, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-ne p0, v4, :cond_b

    invoke-static {v0, p1, p2, p3}, Lcom/android/tools/r8/shaking/Z3;->a(IILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_b
    invoke-static {v0, p1, p2, p3}, Lcom/android/tools/r8/shaking/Z3;->a(IILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    return v2

    :cond_c
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_d
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p0

    invoke-static {v0, p0, p2, p3}, Lcom/android/tools/r8/shaking/Z3;->a(IILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_e
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p0

    if-ne p1, p0, :cond_f

    return v2

    :cond_f
    return v1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/android/tools/r8/shaking/Z3;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lcom/android/tools/r8/shaking/Z3;

    iget-object v0, p0, Lcom/android/tools/r8/shaking/Z3;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/tools/r8/shaking/Z3;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/Z3;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
