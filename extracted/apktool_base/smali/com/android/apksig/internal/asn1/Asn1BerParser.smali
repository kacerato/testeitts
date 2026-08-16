.class public final Lcom/android/apksig/internal/asn1/Asn1BerParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/apksig/internal/asn1/Asn1BerParser$Asn1UnexpectedTagException;,
        Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;,
        Lcom/android/apksig/internal/asn1/Asn1BerParser$BerToJavaConverter;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/android/apksig/internal/asn1/Asn1BerParser;->lambda$parseSequence$0(Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;)I

    move-result p0

    return p0
.end method

.method public static synthetic access$000(Ljava/lang/reflect/Field;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/asn1/Asn1DecodingException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-static {p0}, Lcom/android/apksig/internal/asn1/Asn1BerParser;->getElementType(Ljava/lang/reflect/Field;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/apksig/internal/asn1/ber/BerDataValue;Ljava/lang/Class;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/asn1/Asn1DecodingException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/android/apksig/internal/asn1/Asn1BerParser;->parseSetOf(Lcom/android/apksig/internal/asn1/ber/BerDataValue;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Ljava/nio/ByteBuffer;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/asn1/Asn1DecodingException;
        }
    .end annotation

    invoke-static {p0}, Lcom/android/apksig/internal/asn1/Asn1BerParser;->integerToInt(Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0
.end method

.method public static synthetic access$300(Ljava/nio/ByteBuffer;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/asn1/Asn1DecodingException;
        }
    .end annotation

    invoke-static {p0}, Lcom/android/apksig/internal/asn1/Asn1BerParser;->integerToLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic access$400(Ljava/nio/ByteBuffer;)Ljava/math/BigInteger;
    .locals 0

    invoke-static {p0}, Lcom/android/apksig/internal/asn1/Asn1BerParser;->integerToBigInteger(Ljava/nio/ByteBuffer;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$500(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/asn1/Asn1DecodingException;
        }
    .end annotation

    invoke-static {p0}, Lcom/android/apksig/internal/asn1/Asn1BerParser;->oidToString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/apksig/internal/asn1/ber/BerDataValue;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/asn1/Asn1DecodingException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/android/apksig/internal/asn1/Asn1BerParser;->parseSequence(Lcom/android/apksig/internal/asn1/ber/BerDataValue;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/apksig/internal/asn1/ber/BerDataValue;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/asn1/Asn1DecodingException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/android/apksig/internal/asn1/Asn1BerParser;->parseChoice(Lcom/android/apksig/internal/asn1/ber/BerDataValue;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static decodeBase128UnsignedLong(Ljava/nio/ByteBuffer;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/asn1/Asn1DecodingException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide v3, 0xffffffffffffffL

    cmp-long v0, v1, v3

    if-gtz v0, :cond_1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    const/4 v3, 0x7

    shl-long/2addr v1, v3

    and-int/lit8 v3, v0, 0x7f

    int-to-long v3, v3

    or-long/2addr v1, v3

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_0

    return-wide v1

    :cond_1
    new-instance p0, Lcom/android/apksig/internal/asn1/Asn1DecodingException;

    const-string v0, "Base-128 number too large"

    invoke-direct {p0, v0}, Lcom/android/apksig/internal/asn1/Asn1DecodingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/android/apksig/internal/asn1/Asn1DecodingException;

    const-string v0, "Truncated base-128 encoded input: missing terminating byte, with highest bit not set"

    invoke-direct {p0, v0}, Lcom/android/apksig/internal/asn1/Asn1DecodingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getAnnotatedFields(Ljava/lang/Class;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/asn1/Asn1DecodingException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    const-class v5, Lcom/android/apksig/internal/asn1/Asn1Field;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lcom/android/apksig/internal/asn1/Asn1Field;

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v7

    const-string v8, "."

    if-nez v7, :cond_1

    :try_start_0
    new-instance v5, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;

    invoke-direct {v5, v4, v6}, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;-><init>(Ljava/lang/reflect/Field;Lcom/android/apksig/internal/asn1/Asn1Field;)V
    :try_end_0
    .catch Lcom/android/apksig/internal/asn1/Asn1DecodingException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/android/apksig/internal/asn1/Asn1DecodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid ASN.1 annotation on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lcom/android/apksig/internal/asn1/Asn1DecodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    new-instance v0, Lcom/android/apksig/internal/asn1/Asn1DecodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " used on a static field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/apksig/internal/asn1/Asn1DecodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-object v1
.end method

.method private static getContainerAsn1Type(Ljava/lang/Class;)Lcom/android/apksig/internal/asn1/Asn1Type;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/android/apksig/internal/asn1/Asn1Type;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/asn1/Asn1DecodingException;
        }
    .end annotation

    const-class v0, Lcom/android/apksig/internal/asn1/Asn1Class;

    invoke-static {p0, v0}, Lcom/android/apksig/internal/compat/ClassCompat;->getDeclaredAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/android/apksig/internal/asn1/Asn1Class;

    if-eqz v1, :cond_2

    sget-object p0, Lcom/android/apksig/internal/asn1/Asn1BerParser$1;->$SwitchMap$com$android$apksig$internal$asn1$Asn1Type:[I

    invoke-interface {v1}, Lcom/android/apksig/internal/asn1/Asn1Class;->type()Lcom/android/apksig/internal/asn1/Asn1Type;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p0, p0, v0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/android/apksig/internal/asn1/Asn1DecodingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported ASN.1 container annotation type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/apksig/internal/asn1/Asn1Class;->type()Lcom/android/apksig/internal/asn1/Asn1Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/apksig/internal/asn1/Asn1DecodingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-interface {v1}, Lcom/android/apksig/internal/asn1/Asn1Class;->type()Lcom/android/apksig/internal/asn1/Asn1Type;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance v1, Lcom/android/apksig/internal/asn1/Asn1DecodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not annotated with "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/apksig/internal/asn1/Asn1DecodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getElementType(Ljava/lang/reflect/Field;)Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/asn1/Asn1DecodingException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/android/apksig/internal/asn1/a;->a(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const-string v2, "Not a container type: "

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    const/16 v4, 0x3e

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-eq v4, v3, :cond_1

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Lcom/android/apksig/internal/asn1/Asn1DecodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/apksig/internal/asn1/Asn1DecodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/android/apksig/internal/asn1/Asn1DecodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/apksig/internal/asn1/Asn1DecodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static integerToBigInteger(Ljava/nio/ByteBuffer;)Ljava/math/BigInteger;
    .locals 1

    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    return-object p0

    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    invoke-static {p0}, Lcom/android/apksig/internal/util/ByteBufferUtils;->toByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0
.end method

.method private static integerToInt(Ljava/nio/ByteBuffer;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/asn1/Asn1DecodingException;
        }
    .end annotation

    invoke-static {p0}, Lcom/android/apksig/internal/asn1/Asn1BerParser;->integerToBigInteger(Ljava/nio/ByteBuffer;)Ljava/math/BigInteger;

    move-result-object p0

    const-wide/32 v0, -0x80000000

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_0

    const-wide/32 v0, 0x7fffffff

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    return p0

    :cond_0
    new-instance v0, Lcom/android/apksig/internal/asn1/Asn1DecodingException;

    const-string v1, "INTEGER cannot be represented as int: %1$d (0x%1$x)"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/apksig/internal/asn1/Asn1DecodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static integerToLong(Ljava/nio/ByteBuffer;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/asn1/Asn1DecodingException;
        }
    .end annotation

    invoke-static {p0}, Lcom/android/apksig/internal/asn1/Asn1BerParser;->integerToBigInteger(Ljava/nio/ByteBuffer;)Ljava/math/BigInteger;

    move-result-object p0

    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance v0, Lcom/android/apksig/internal/asn1/Asn1DecodingException;

    const-string v1, "INTEGER cannot be represented as long: %1$d (0x%1$x)"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/apksig/internal/asn1/Asn1DecodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static synthetic lambda$parseSequence$0(Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;)I
    .locals 0

    invoke-virtual {p0}, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;->getAnnotation()Lcom/android/apksig/internal/asn1/Asn1Field;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/apksig/internal/asn1/Asn1Field;->index()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;->getAnnotation()Lcom/android/apksig/internal/asn1/Asn1Field;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/apksig/internal/asn1/Asn1Field;->index()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method private static oidToString(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/asn1/Asn1DecodingException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/android/apksig/internal/asn1/Asn1BerParser;->decodeBase128UnsignedLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    const-wide/16 v2, 0x28

    div-long v2, v0, v2

    const-wide/16 v4, 0x2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    mul-int/lit8 v3, v2, 0x28

    int-to-long v3, v3

    sub-long/2addr v0, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    int-to-long v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/apksig/internal/asn1/Asn1BerParser;->decodeBase128UnsignedLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Lcom/android/apksig/internal/asn1/Asn1DecodingException;

    const-string v0, "Empty OBJECT IDENTIFIER"

    invoke-direct {p0, v0}, Lcom/android/apksig/internal/asn1/Asn1DecodingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static parse(Lcom/android/apksig/internal/asn1/ber/BerDataValue;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/apksig/internal/asn1/ber/BerDataValue;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/asn1/Asn1DecodingException;
        }
    .end annotation

    if-eqz p0, :cond_5

    if-eqz p1, :cond_4

    .line 5
    invoke-static {p1}, Lcom/android/apksig/internal/asn1/Asn1BerParser;->getContainerAsn1Type(Ljava/lang/Class;)Lcom/android/apksig/internal/asn1/Asn1Type;

    move-result-object v0

    .line 6
    sget-object v1, Lcom/android/apksig/internal/asn1/Asn1BerParser$1;->$SwitchMap$com$android$apksig$internal$asn1$Asn1Type:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    .line 7
    invoke-static {p0, p1, v2}, Lcom/android/apksig/internal/asn1/Asn1BerParser;->parseSequence(Lcom/android/apksig/internal/asn1/ber/BerDataValue;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 8
    :cond_0
    new-instance p0, Lcom/android/apksig/internal/asn1/Asn1DecodingException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Parsing container "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " not supported"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/apksig/internal/asn1/Asn1DecodingException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_1
    invoke-static {v0}, Lcom/android/apksig/internal/asn1/ber/BerEncoding;->getTagNumber(Lcom/android/apksig/internal/asn1/Asn1Type;)I

    move-result v0

    .line 10
    invoke-virtual {p0}, Lcom/android/apksig/internal/asn1/ber/BerDataValue;->getTagClass()I

    move-result v1

    if-nez v1, :cond_2

    .line 11
    invoke-virtual {p0}, Lcom/android/apksig/internal/asn1/ber/BerDataValue;->getTagNumber()I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 12
    invoke-static {p0, p1}, Lcom/android/apksig/internal/asn1/Asn1BerParser;->parseSequence(Lcom/android/apksig/internal/asn1/ber/BerDataValue;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 13
    :cond_2
    new-instance v1, Lcom/android/apksig/internal/asn1/Asn1BerParser$Asn1UnexpectedTagException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected data value read as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Expected "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    .line 15
    invoke-static {p1, v0}, Lcom/android/apksig/internal/asn1/ber/BerEncoding;->tagClassAndNumberToString(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", but read: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {p0}, Lcom/android/apksig/internal/asn1/ber/BerDataValue;->getTagClass()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/apksig/internal/asn1/ber/BerDataValue;->getTagNumber()I

    move-result p0

    .line 17
    invoke-static {p1, p0}, Lcom/android/apksig/internal/asn1/ber/BerEncoding;->tagClassAndNumberToString(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/apksig/internal/asn1/Asn1BerParser$Asn1UnexpectedTagException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 18
    :cond_3
    invoke-static {p0, p1}, Lcom/android/apksig/internal/asn1/Asn1BerParser;->parseChoice(Lcom/android/apksig/internal/asn1/ber/BerDataValue;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 19
    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "containerClass == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 20
    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "container == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static parse(Ljava/nio/ByteBuffer;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/asn1/Asn1DecodingException;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lcom/android/apksig/internal/asn1/ber/ByteBufferBerDataValueReader;

    invoke-direct {v0, p0}, Lcom/android/apksig/internal/asn1/ber/ByteBufferBerDataValueReader;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0}, Lcom/android/apksig/internal/asn1/ber/ByteBufferBerDataValueReader;->readDataValue()Lcom/android/apksig/internal/asn1/ber/BerDataValue;

    move-result-object p0
    :try_end_0
    .catch Lcom/android/apksig/internal/asn1/ber/BerDataValueFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    .line 2
    invoke-static {p0, p1}, Lcom/android/apksig/internal/asn1/Asn1BerParser;->parse(Lcom/android/apksig/internal/asn1/ber/BerDataValue;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Lcom/android/apksig/internal/asn1/Asn1DecodingException;

    const-string p1, "Empty input"

    invoke-direct {p0, p1}, Lcom/android/apksig/internal/asn1/Asn1DecodingException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    .line 4
    new-instance p1, Lcom/android/apksig/internal/asn1/Asn1DecodingException;

    const-string v0, "Failed to decode top-level data value"

    invoke-direct {p1, v0, p0}, Lcom/android/apksig/internal/asn1/Asn1DecodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static parseChoice(Lcom/android/apksig/internal/asn1/ber/BerDataValue;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/apksig/internal/asn1/ber/BerDataValue;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/asn1/Asn1DecodingException;
        }
    .end annotation

    invoke-static {p1}, Lcom/android/apksig/internal/asn1/Asn1BerParser;->getAnnotatedFields(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;

    invoke-virtual {v2}, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;->getBerTagNumber()I

    move-result v3

    invoke-virtual {v2}, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;->getBerTagClass()I

    move-result v4

    add-int/lit8 v1, v1, 0x1

    move v5, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;

    invoke-virtual {v6}, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;->getBerTagNumber()I

    move-result v7

    invoke-virtual {v6}, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;->getBerTagClass()I

    move-result v8

    if-ne v3, v7, :cond_2

    if-eq v4, v8, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Lcom/android/apksig/internal/asn1/Asn1DecodingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CHOICE fields are indistinguishable because they have the same tag class and number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;->getField()Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and ."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;->getField()Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/apksig/internal/asn1/Asn1DecodingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;

    :try_start_1
    invoke-virtual {v2, p0, v1}, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;->setValueFrom(Lcom/android/apksig/internal/asn1/ber/BerDataValue;Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/android/apksig/internal/asn1/Asn1BerParser$Asn1UnexpectedTagException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    :cond_4
    new-instance p0, Lcom/android/apksig/internal/asn1/Asn1DecodingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No options of CHOICE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " matched"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/apksig/internal/asn1/Asn1DecodingException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    :goto_2
    new-instance v0, Lcom/android/apksig/internal/asn1/Asn1DecodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to instantiate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lcom/android/apksig/internal/asn1/Asn1DecodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_5
    new-instance p0, Lcom/android/apksig/internal/asn1/Asn1DecodingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No fields annotated with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/apksig/internal/asn1/Asn1Field;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in CHOICE class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/apksig/internal/asn1/Asn1DecodingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static parseImplicitSetOf(Ljava/nio/ByteBuffer;Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/asn1/Asn1DecodingException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/android/apksig/internal/asn1/ber/ByteBufferBerDataValueReader;

    invoke-direct {v0, p0}, Lcom/android/apksig/internal/asn1/ber/ByteBufferBerDataValueReader;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0}, Lcom/android/apksig/internal/asn1/ber/ByteBufferBerDataValueReader;->readDataValue()Lcom/android/apksig/internal/asn1/ber/BerDataValue;

    move-result-object p0
    :try_end_0
    .catch Lcom/android/apksig/internal/asn1/ber/BerDataValueFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Lcom/android/apksig/internal/asn1/Asn1BerParser;->parseSetOf(Lcom/android/apksig/internal/asn1/ber/BerDataValue;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/android/apksig/internal/asn1/Asn1DecodingException;

    const-string p1, "Empty input"

    invoke-direct {p0, p1}, Lcom/android/apksig/internal/asn1/Asn1DecodingException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/android/apksig/internal/asn1/Asn1DecodingException;

    const-string v0, "Failed to decode top-level data value"

    invoke-direct {p1, v0, p0}, Lcom/android/apksig/internal/asn1/Asn1DecodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static parseSequence(Lcom/android/apksig/internal/asn1/ber/BerDataValue;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/apksig/internal/asn1/ber/BerDataValue;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/asn1/Asn1DecodingException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/android/apksig/internal/asn1/Asn1BerParser;->parseSequence(Lcom/android/apksig/internal/asn1/ber/BerDataValue;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static parseSequence(Lcom/android/apksig/internal/asn1/ber/BerDataValue;Ljava/lang/Class;Z)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/apksig/internal/asn1/ber/BerDataValue;",
            "Ljava/lang/Class<",
            "TT;>;Z)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/asn1/Asn1DecodingException;
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/android/apksig/internal/asn1/Asn1BerParser;->getAnnotatedFields(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/android/apksig/internal/asn1/b;

    invoke-direct {v1}, Lcom/android/apksig/internal/asn1/b;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const-string v3, "."

    const/4 v4, 0x0

    if-le v1, v2, :cond_2

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v2, v4

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v2}, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;->getAnnotation()Lcom/android/apksig/internal/asn1/Asn1Field;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/apksig/internal/asn1/Asn1Field;->index()I

    move-result v6

    invoke-virtual {v5}, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;->getAnnotation()Lcom/android/apksig/internal/asn1/Asn1Field;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/apksig/internal/asn1/Asn1Field;->index()I

    move-result v7

    if-eq v6, v7, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    new-instance p0, Lcom/android/apksig/internal/asn1/Asn1DecodingException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Fields have the same index: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v2}, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;->getField()Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and ."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v5}, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;->getField()Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/apksig/internal/asn1/Asn1DecodingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    move-object v2, v5

    goto :goto_0

    .line 11
    :cond_2
    :try_start_0
    invoke-virtual {p1, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_3

    .line 12
    invoke-virtual {p0}, Lcom/android/apksig/internal/asn1/ber/BerDataValue;->contentsReader()Lcom/android/apksig/internal/asn1/ber/BerDataValueReader;

    move-result-object v2

    const/4 v4, 0x0

    .line 13
    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_7

    if-eqz p2, :cond_4

    if-nez v4, :cond_4

    move-object v5, p0

    goto :goto_3

    .line 14
    :cond_4
    :try_start_1
    invoke-interface {v2}, Lcom/android/apksig/internal/asn1/ber/BerDataValueReader;->readDataValue()Lcom/android/apksig/internal/asn1/ber/BerDataValue;

    move-result-object v5
    :try_end_1
    .catch Lcom/android/apksig/internal/asn1/ber/BerDataValueFormatException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_3
    if-nez v5, :cond_5

    goto :goto_7

    :cond_5
    move v6, v4

    .line 15
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 16
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;

    .line 17
    :try_start_2
    invoke-virtual {v7}, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;->isOptional()Z

    move-result v8
    :try_end_2
    .catch Lcom/android/apksig/internal/asn1/Asn1DecodingException; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v8, :cond_6

    .line 18
    :try_start_3
    invoke-virtual {v7, v5, v1}, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;->setValueFrom(Lcom/android/apksig/internal/asn1/ber/BerDataValue;Ljava/lang/Object;)V
    :try_end_3
    .catch Lcom/android/apksig/internal/asn1/Asn1BerParser$Asn1UnexpectedTagException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/android/apksig/internal/asn1/Asn1DecodingException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_5
    add-int/lit8 v6, v6, 0x1

    move v4, v6

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_6

    :catch_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 19
    :cond_6
    :try_start_4
    invoke-virtual {v7, v5, v1}, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;->setValueFrom(Lcom/android/apksig/internal/asn1/ber/BerDataValue;Ljava/lang/Object;)V
    :try_end_4
    .catch Lcom/android/apksig/internal/asn1/Asn1DecodingException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_5

    .line 20
    :goto_6
    new-instance p2, Lcom/android/apksig/internal/asn1/Asn1DecodingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to parse "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v7}, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;->getField()Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Lcom/android/apksig/internal/asn1/Asn1DecodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p0

    .line 23
    new-instance p1, Lcom/android/apksig/internal/asn1/Asn1DecodingException;

    const-string p2, "Malformed data value"

    invoke-direct {p1, p2, p0}, Lcom/android/apksig/internal/asn1/Asn1DecodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_7
    :goto_7
    return-object v1

    :catch_3
    move-exception p0

    goto :goto_8

    :catch_4
    move-exception p0

    .line 24
    :goto_8
    new-instance p2, Lcom/android/apksig/internal/asn1/Asn1DecodingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to instantiate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Lcom/android/apksig/internal/asn1/Asn1DecodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private static parseSetOf(Lcom/android/apksig/internal/asn1/ber/BerDataValue;Ljava/lang/Class;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/apksig/internal/asn1/ber/BerDataValue;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/asn1/Asn1DecodingException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/apksig/internal/asn1/ber/BerDataValue;->contentsReader()Lcom/android/apksig/internal/asn1/ber/BerDataValueReader;

    move-result-object p0

    :goto_0
    :try_start_0
    invoke-interface {p0}, Lcom/android/apksig/internal/asn1/ber/BerDataValueReader;->readDataValue()Lcom/android/apksig/internal/asn1/ber/BerDataValue;

    move-result-object v1
    :try_end_0
    .catch Lcom/android/apksig/internal/asn1/ber/BerDataValueFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const-class v2, Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/android/apksig/internal/asn1/ber/BerDataValue;->getEncodedContents()Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-class v2, Lcom/android/apksig/internal/asn1/Asn1OpaqueObject;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lcom/android/apksig/internal/asn1/Asn1OpaqueObject;

    invoke-virtual {v1}, Lcom/android/apksig/internal/asn1/ber/BerDataValue;->getEncoded()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/android/apksig/internal/asn1/Asn1OpaqueObject;-><init>(Ljava/nio/ByteBuffer;)V

    move-object v1, v2

    goto :goto_1

    :cond_2
    invoke-static {v1, p1}, Lcom/android/apksig/internal/asn1/Asn1BerParser;->parse(Lcom/android/apksig/internal/asn1/ber/BerDataValue;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    :goto_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/android/apksig/internal/asn1/Asn1DecodingException;

    const-string v0, "Malformed data value"

    invoke-direct {p1, v0, p0}, Lcom/android/apksig/internal/asn1/Asn1DecodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
