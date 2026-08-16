.class public final enum Lnet/jpountz/util/d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/jpountz/util/d;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/jpountz/util/d;

.field private static final BYTE_ARRAY_OFFSET:J

.field private static final BYTE_ARRAY_SCALE:I

.field private static final INT_ARRAY_OFFSET:J

.field private static final INT_ARRAY_SCALE:I

.field private static final SHORT_ARRAY_OFFSET:J

.field private static final SHORT_ARRAY_SCALE:I

.field private static final UNSAFE:Lsun/misc/Unsafe;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-class v0, [S

    const-class v1, [I

    const-class v2, [B

    const-string v3, "Cannot access Unsafe"

    const/4 v4, 0x0

    new-array v4, v4, [Lnet/jpountz/util/d;

    sput-object v4, Lnet/jpountz/util/d;->$VALUES:[Lnet/jpountz/util/d;

    :try_start_0
    const-class v4, Lsun/misc/Unsafe;

    const-string v5, "theUnsafe"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsun/misc/Unsafe;

    sput-object v4, Lnet/jpountz/util/d;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v4, v2}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v5

    int-to-long v5, v5

    sput-wide v5, Lnet/jpountz/util/d;->BYTE_ARRAY_OFFSET:J

    invoke-virtual {v4, v2}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v2

    sput v2, Lnet/jpountz/util/d;->BYTE_ARRAY_SCALE:I

    invoke-virtual {v4, v1}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v2

    int-to-long v5, v2

    sput-wide v5, Lnet/jpountz/util/d;->INT_ARRAY_OFFSET:J

    invoke-virtual {v4, v1}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v1

    sput v1, Lnet/jpountz/util/d;->INT_ARRAY_SCALE:I

    invoke-virtual {v4, v0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v1

    int-to-long v1, v1

    sput-wide v1, Lnet/jpountz/util/d;->SHORT_ARRAY_OFFSET:J

    invoke-virtual {v4, v0}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    sput v0, Lnet/jpountz/util/d;->SHORT_ARRAY_SCALE:I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance v0, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v0, v3}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    new-instance v0, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v0, v3}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    new-instance v0, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v0, v3}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(I)V
    .locals 0

    invoke-static {p0}, Lnet/jpountz/util/c;->a(I)V

    return-void
.end method

.method public static b([BI)V
    .locals 0

    invoke-static {p0, p1}, Lnet/jpountz/util/c;->b([BI)V

    return-void
.end method

.method public static c([BII)V
    .locals 0

    invoke-static {p0, p1, p2}, Lnet/jpountz/util/c;->c([BII)V

    return-void
.end method

.method public static d([BI)B
    .locals 5

    sget-object v0, Lnet/jpountz/util/d;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lnet/jpountz/util/d;->BYTE_ARRAY_OFFSET:J

    sget v3, Lnet/jpountz/util/d;->BYTE_ARRAY_SCALE:I

    mul-int/2addr v3, p1

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result p0

    return p0
.end method

.method public static e([BI)I
    .locals 5

    sget-object v0, Lnet/jpountz/util/d;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lnet/jpountz/util/d;->BYTE_ARRAY_OFFSET:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method public static g([II)I
    .locals 5

    sget-object v0, Lnet/jpountz/util/d;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lnet/jpountz/util/d;->INT_ARRAY_OFFSET:J

    sget v3, Lnet/jpountz/util/d;->INT_ARRAY_SCALE:I

    mul-int/2addr v3, p1

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method public static h([BI)I
    .locals 1

    invoke-static {p0, p1}, Lnet/jpountz/util/d;->e([BI)I

    move-result p0

    sget-object p1, Lnet/jpountz/util/e;->NATIVE_BYTE_ORDER:Ljava/nio/ByteOrder;

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p1, v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p0

    :cond_0
    return p0
.end method

.method public static i([BI)J
    .locals 5

    sget-object v0, Lnet/jpountz/util/d;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lnet/jpountz/util/d;->BYTE_ARRAY_OFFSET:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static j([BI)J
    .locals 2

    invoke-static {p0, p1}, Lnet/jpountz/util/d;->i([BI)J

    move-result-wide p0

    sget-object v0, Lnet/jpountz/util/e;->NATIVE_BYTE_ORDER:Ljava/nio/ByteOrder;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide p0

    :cond_0
    return-wide p0
.end method

.method public static k([SI)I
    .locals 5

    sget-object v0, Lnet/jpountz/util/d;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lnet/jpountz/util/d;->SHORT_ARRAY_OFFSET:J

    sget v3, Lnet/jpountz/util/d;->SHORT_ARRAY_SCALE:I

    mul-int/2addr v3, p1

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getShort(Ljava/lang/Object;J)S

    move-result p0

    const p1, 0xffff

    and-int/2addr p0, p1

    return p0
.end method

.method public static m([BI)S
    .locals 5

    sget-object v0, Lnet/jpountz/util/d;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lnet/jpountz/util/d;->BYTE_ARRAY_OFFSET:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getShort(Ljava/lang/Object;J)S

    move-result p0

    return p0
.end method

.method public static o([BI)I
    .locals 1

    invoke-static {p0, p1}, Lnet/jpountz/util/d;->m([BI)S

    move-result p0

    sget-object p1, Lnet/jpountz/util/e;->NATIVE_BYTE_ORDER:Ljava/nio/ByteOrder;

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p1, v0, :cond_0

    invoke-static {p0}, Ljava/lang/Short;->reverseBytes(S)S

    move-result p0

    :cond_0
    const p1, 0xffff

    and-int/2addr p0, p1

    return p0
.end method

.method public static q([BIB)V
    .locals 5

    sget-object v0, Lnet/jpountz/util/d;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lnet/jpountz/util/d;->BYTE_ARRAY_OFFSET:J

    sget v3, Lnet/jpountz/util/d;->BYTE_ARRAY_SCALE:I

    mul-int/2addr v3, p1

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2, p2}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    return-void
.end method

.method public static r([BII)V
    .locals 0

    int-to-byte p2, p2

    invoke-static {p0, p1, p2}, Lnet/jpountz/util/d;->q([BIB)V

    return-void
.end method

.method public static s([BII)V
    .locals 5

    sget-object v0, Lnet/jpountz/util/d;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lnet/jpountz/util/d;->BYTE_ARRAY_OFFSET:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2, p2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method public static u([III)V
    .locals 5

    sget-object v0, Lnet/jpountz/util/d;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lnet/jpountz/util/d;->INT_ARRAY_OFFSET:J

    sget v3, Lnet/jpountz/util/d;->INT_ARRAY_SCALE:I

    mul-int/2addr v3, p1

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2, p2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method public static v([BIJ)V
    .locals 6

    sget-object v0, Lnet/jpountz/util/d;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lnet/jpountz/util/d;->BYTE_ARRAY_OFFSET:J

    int-to-long v3, p1

    add-long v2, v1, v3

    move-object v1, p0

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/jpountz/util/d;
    .locals 1

    const-class v0, Lnet/jpountz/util/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/jpountz/util/d;

    return-object p0
.end method

.method public static values()[Lnet/jpountz/util/d;
    .locals 1

    sget-object v0, Lnet/jpountz/util/d;->$VALUES:[Lnet/jpountz/util/d;

    invoke-virtual {v0}, [Lnet/jpountz/util/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/jpountz/util/d;

    return-object v0
.end method

.method public static w([BIS)V
    .locals 5

    sget-object v0, Lnet/jpountz/util/d;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lnet/jpountz/util/d;->BYTE_ARRAY_OFFSET:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2, p2}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    return-void
.end method

.method public static x([SII)V
    .locals 5

    sget-object v0, Lnet/jpountz/util/d;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lnet/jpountz/util/d;->SHORT_ARRAY_OFFSET:J

    sget v3, Lnet/jpountz/util/d;->SHORT_ARRAY_SCALE:I

    mul-int/2addr v3, p1

    int-to-long v3, v3

    add-long/2addr v1, v3

    int-to-short p1, p2

    invoke-virtual {v0, p0, v1, v2, p1}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    return-void
.end method

.method public static y([BII)V
    .locals 1

    int-to-byte v0, p2

    invoke-static {p0, p1, v0}, Lnet/jpountz/util/d;->q([BIB)V

    add-int/lit8 p1, p1, 0x1

    ushr-int/lit8 p2, p2, 0x8

    int-to-byte p2, p2

    invoke-static {p0, p1, p2}, Lnet/jpountz/util/d;->q([BIB)V

    return-void
.end method
