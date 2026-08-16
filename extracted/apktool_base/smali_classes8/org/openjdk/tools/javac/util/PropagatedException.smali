.class public Lorg/openjdk/tools/javac/util/PropagatedException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = -0x542c4eb590edf0c7L


# direct methods
.method public constructor <init>(Ljava/lang/RuntimeException;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/RuntimeException;
    .locals 1

    .line 2
    invoke-super {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/RuntimeException;

    return-object v0
.end method

.method public bridge synthetic getCause()Ljava/lang/Throwable;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/PropagatedException;->getCause()Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method
