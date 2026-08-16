.class public Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;
.super Lorg/eclipse/jdt/internal/compiler/impl/Constant;
.source "SourceFile"


# static fields
.field private static final MIN_VALUE:Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;

.field private static final ZERO:Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;


# instance fields
.field private value:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;-><init>(J)V

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->ZERO:Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;

    const-wide/high16 v1, -0x8000000000000000L

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;-><init>(J)V

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->MIN_VALUE:Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;

    return-void
.end method

.method private constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;-><init>()V

    iput-wide p1, p0, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->value:J

    return-void
.end method

.method public static fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    sget-object p0, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->ZERO:Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;

    return-object p0

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    sget-object p0, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->MIN_VALUE:Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;

    return-object p0

    :cond_1
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public byteValue()B
    .locals 2

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->value:J

    long-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method public charValue()C
    .locals 2

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->value:J

    long-to-int v0, v0

    int-to-char v0, v0

    return v0
.end method

.method public doubleValue()D
    .locals 2

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->value:J

    long-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->value:J

    iget-wide v4, p1, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->value:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_3

    return v0

    :cond_3
    return v1
.end method

.method public floatValue()F
    .locals 2

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->value:J

    long-to-float v0, v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->value:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public intValue()I
    .locals 2

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->value:J

    long-to-int v0, v0

    return v0
.end method

.method public longValue()J
    .locals 2

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->value:J

    return-wide v0
.end method

.method public shortValue()S
    .locals 2

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->value:J

    long-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public stringValue()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->value:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(long)"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->value:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public typeID()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method
