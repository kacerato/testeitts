.class public Lorg/openjdk/tools/javac/util/Assert;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static check(Z)V
    .locals 0

    if-nez p0, :cond_0

    .line 1
    invoke-static {}, Lorg/openjdk/tools/javac/util/Assert;->error()V

    :cond_0
    return-void
.end method

.method public static check(ZI)V
    .locals 0

    if-nez p0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/openjdk/tools/javac/util/Assert;->error(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static check(ZJ)V
    .locals 0

    if-nez p0, :cond_0

    .line 3
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/openjdk/tools/javac/util/Assert;->error(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static check(ZLjava/lang/Object;)V
    .locals 0

    if-nez p0, :cond_0

    .line 4
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/openjdk/tools/javac/util/Assert;->error(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static check(ZLjava/lang/String;)V
    .locals 0

    if-nez p0, :cond_0

    .line 5
    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Assert;->error(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static check(ZLjava/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 6
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lorg/openjdk/tools/javac/util/Assert;->error(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static checkNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 1
    invoke-static {}, Lorg/openjdk/tools/javac/util/Assert;->error()V

    :cond_0
    return-object p0
.end method

.method public static checkNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 2
    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Assert;->error(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static checkNonNull(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Assert;->error(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static checkNull(Ljava/lang/Object;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-static {}, Lorg/openjdk/tools/javac/util/Assert;->error()V

    :cond_0
    return-void
.end method

.method public static checkNull(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/openjdk/tools/javac/util/Assert;->error(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static checkNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 3
    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Assert;->error(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static checkNull(Ljava/lang/Object;Ljava/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lorg/openjdk/tools/javac/util/Assert;->error(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static error()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static error(Ljava/lang/String;)V
    .locals 1

    .line 2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
