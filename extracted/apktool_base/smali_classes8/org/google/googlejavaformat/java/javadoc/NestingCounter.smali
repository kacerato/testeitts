.class final Lorg/google/googlejavaformat/java/javadoc/NestingCounter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private value:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decrementIfPositive()V
    .locals 1

    iget v0, p0, Lorg/google/googlejavaformat/java/javadoc/NestingCounter;->value:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/google/googlejavaformat/java/javadoc/NestingCounter;->value:I

    :cond_0
    return-void
.end method

.method public increment()V
    .locals 1

    iget v0, p0, Lorg/google/googlejavaformat/java/javadoc/NestingCounter;->value:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/google/googlejavaformat/java/javadoc/NestingCounter;->value:I

    return-void
.end method

.method public incrementIfPositive()V
    .locals 1

    iget v0, p0, Lorg/google/googlejavaformat/java/javadoc/NestingCounter;->value:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/google/googlejavaformat/java/javadoc/NestingCounter;->value:I

    :cond_0
    return-void
.end method

.method public isPositive()Z
    .locals 1

    iget v0, p0, Lorg/google/googlejavaformat/java/javadoc/NestingCounter;->value:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/google/googlejavaformat/java/javadoc/NestingCounter;->value:I

    return-void
.end method

.method public value()I
    .locals 1

    iget v0, p0, Lorg/google/googlejavaformat/java/javadoc/NestingCounter;->value:I

    return v0
.end method
