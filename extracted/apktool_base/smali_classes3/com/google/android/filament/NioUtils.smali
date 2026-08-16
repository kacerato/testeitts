.class final Lcom/google/android/filament/NioUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/filament/proguard/UsedByNative;
    value = "NioUtils.cpp"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/NioUtils$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBaseArray(Ljava/nio/Buffer;)Ljava/lang/Object;
    .locals 1
    .param p0    # Ljava/nio/Buffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/filament/proguard/UsedByNative;
        value = "NioUtils.cpp"
    .end annotation

    invoke-virtual {p0}, Ljava/nio/Buffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/nio/Buffer;->array()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getBaseArrayOffset(Ljava/nio/Buffer;I)I
    .locals 1
    .param p0    # Ljava/nio/Buffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/filament/proguard/UsedByNative;
        value = "NioUtils.cpp"
    .end annotation

    invoke-virtual {p0}, Ljava/nio/Buffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/nio/Buffer;->arrayOffset()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result p0

    add-int/2addr v0, p0

    shl-int p0, v0, p1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getBasePointer(Ljava/nio/Buffer;JI)J
    .locals 3
    .param p0    # Ljava/nio/Buffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/filament/proguard/UsedByNative;
        value = "NioUtils.cpp"
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result p0

    shl-int/2addr p0, p3

    int-to-long v0, p0

    add-long/2addr v0, p1

    :cond_0
    return-wide v0
.end method

.method public static getBufferType(Ljava/nio/Buffer;)I
    .locals 1
    .param p0    # Ljava/nio/Buffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/filament/proguard/UsedByNative;
        value = "NioUtils.cpp"
    .end annotation

    instance-of v0, p0, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    sget-object p0, Lcom/google/android/filament/NioUtils$a;->BYTE:Lcom/google/android/filament/NioUtils$a;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    return p0

    :cond_0
    instance-of v0, p0, Ljava/nio/CharBuffer;

    if-eqz v0, :cond_1

    sget-object p0, Lcom/google/android/filament/NioUtils$a;->CHAR:Lcom/google/android/filament/NioUtils$a;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    return p0

    :cond_1
    instance-of v0, p0, Ljava/nio/ShortBuffer;

    if-eqz v0, :cond_2

    sget-object p0, Lcom/google/android/filament/NioUtils$a;->SHORT:Lcom/google/android/filament/NioUtils$a;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    return p0

    :cond_2
    instance-of v0, p0, Ljava/nio/IntBuffer;

    if-eqz v0, :cond_3

    sget-object p0, Lcom/google/android/filament/NioUtils$a;->INT:Lcom/google/android/filament/NioUtils$a;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    return p0

    :cond_3
    instance-of v0, p0, Ljava/nio/LongBuffer;

    if-eqz v0, :cond_4

    sget-object p0, Lcom/google/android/filament/NioUtils$a;->LONG:Lcom/google/android/filament/NioUtils$a;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    return p0

    :cond_4
    instance-of p0, p0, Ljava/nio/FloatBuffer;

    if-eqz p0, :cond_5

    sget-object p0, Lcom/google/android/filament/NioUtils$a;->FLOAT:Lcom/google/android/filament/NioUtils$a;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    return p0

    :cond_5
    sget-object p0, Lcom/google/android/filament/NioUtils$a;->DOUBLE:Lcom/google/android/filament/NioUtils$a;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    return p0
.end method
