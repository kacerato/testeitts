.class abstract Lorg/openjdk/tools/javah/JavahTask$Option;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javah/JavahTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Option"
.end annotation


# instance fields
.field final aliases:[Ljava/lang/String;

.field final hasArg:Z


# direct methods
.method public varargs constructor <init>(Z[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/openjdk/tools/javah/JavahTask$Option;->hasArg:Z

    iput-object p2, p0, Lorg/openjdk/tools/javah/JavahTask$Option;->aliases:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public ignoreRest()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isHidden()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 5

    iget-object v0, p0, Lorg/openjdk/tools/javah/JavahTask$Option;->aliases:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public abstract process(Lorg/openjdk/tools/javah/JavahTask;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javah/JavahTask$BadArgs;
        }
    .end annotation
.end method
