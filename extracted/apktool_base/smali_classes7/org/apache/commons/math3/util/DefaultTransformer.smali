.class public Lorg/apache/commons/math3/util/DefaultTransformer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/util/NumberTransformer;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x37c9b055d20f3a87L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of p1, p1, Lorg/apache/commons/math3/util/DefaultTransformer;

    return p1
.end method

.method public hashCode()I
    .locals 1

    const v0, 0x17f5ed57

    return v0
.end method

.method public transform(Ljava/lang/Object;)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_1

    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CANNOT_TRANSFORM_TO_DOUBLE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OBJECT_TRANSFORMATION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p1, v0, v1}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1
.end method
