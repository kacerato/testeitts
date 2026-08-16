.class public Lorg/openjdk/tools/javac/jvm/ClassFile;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/jvm/ClassFile$NameAndType;,
        Lorg/openjdk/tools/javac/jvm/ClassFile$Version;
    }
.end annotation


# static fields
.field public static final CONSTANT_Class:I = 0x7

.field public static final CONSTANT_Double:I = 0x6

.field public static final CONSTANT_Fieldref:I = 0x9

.field public static final CONSTANT_Float:I = 0x4

.field public static final CONSTANT_Integer:I = 0x3

.field public static final CONSTANT_InterfaceMethodref:I = 0xb

.field public static final CONSTANT_InvokeDynamic:I = 0x12

.field public static final CONSTANT_Long:I = 0x5

.field public static final CONSTANT_MethodHandle:I = 0xf

.field public static final CONSTANT_MethodType:I = 0x10

.field public static final CONSTANT_Methodref:I = 0xa

.field public static final CONSTANT_Module:I = 0x13

.field public static final CONSTANT_NameandType:I = 0xc

.field public static final CONSTANT_Package:I = 0x14

.field public static final CONSTANT_String:I = 0x8

.field public static final CONSTANT_Unicode:I = 0x2

.field public static final CONSTANT_Utf8:I = 0x1

.field public static final JAVA_MAGIC:I = -0x35014542

.field public static final MAX_CODE:I = 0xffff

.field public static final MAX_DIMENSIONS:I = 0xff

.field public static final MAX_LOCALS:I = 0xffff

.field public static final MAX_PARAMETERS:I = 0xff

.field public static final MAX_STACK:I = 0xffff

.field public static final REF_getField:I = 0x1

.field public static final REF_getStatic:I = 0x2

.field public static final REF_invokeInterface:I = 0x9

.field public static final REF_invokeSpecial:I = 0x7

.field public static final REF_invokeStatic:I = 0x6

.field public static final REF_invokeVirtual:I = 0x5

.field public static final REF_newInvokeSpecial:I = 0x8

.field public static final REF_putField:I = 0x3

.field public static final REF_putStatic:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static externalize(Lorg/openjdk/tools/javac/util/Name;)[B
    .locals 2

    .line 5
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/Name;->getByteArray()[B

    move-result-object v0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/Name;->getByteOffset()I

    move-result v1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/Name;->getByteLength()I

    move-result p0

    invoke-static {v0, v1, p0}, Lorg/openjdk/tools/javac/jvm/ClassFile;->externalize([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static externalize([BII)[B
    .locals 4

    .line 1
    new-array v0, p2, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    add-int v2, p1, v1

    .line 2
    aget-byte v2, p0, v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_0

    const/16 v2, 0x2f

    .line 3
    aput-byte v2, v0, v1

    goto :goto_1

    .line 4
    :cond_0
    aput-byte v2, v0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static internalize(Lorg/openjdk/tools/javac/util/Name;)[B
    .locals 2

    .line 5
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/Name;->getByteArray()[B

    move-result-object v0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/Name;->getByteOffset()I

    move-result v1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/Name;->getByteLength()I

    move-result p0

    invoke-static {v0, v1, p0}, Lorg/openjdk/tools/javac/jvm/ClassFile;->internalize([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static internalize([BII)[B
    .locals 4

    .line 1
    new-array v0, p2, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    add-int v2, p1, v1

    .line 2
    aget-byte v2, p0, v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_0

    const/16 v2, 0x2e

    .line 3
    aput-byte v2, v0, v1

    goto :goto_1

    .line 4
    :cond_0
    aput-byte v2, v0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
