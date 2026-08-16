.class public abstract Lhm/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhm/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhm/c$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static q(Lhm/e;)V
    .locals 1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p0, v0}, Lhm/c;->r(Lhm/e;Ljava/io/PrintStream;)V

    return-void
.end method

.method public static r(Lhm/e;Ljava/io/PrintStream;)V
    .locals 1

    invoke-interface {p0}, Lhm/e;->perform()Lhm/i;

    move-result-object p0

    invoke-interface {p0}, Lhm/i;->a()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lhm/i;->a()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_0
    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public static s([Lhm/e;)V
    .locals 1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p0, v0}, Lhm/c;->t([Lhm/e;Ljava/io/PrintStream;)V

    return-void
.end method

.method public static t([Lhm/e;Ljava/io/PrintStream;)V
    .locals 4

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-eq v1, v2, :cond_2

    aget-object v2, p0, v1

    invoke-interface {v2}, Lhm/e;->perform()Lhm/i;

    move-result-object v2

    invoke-interface {v2}, Lhm/i;->b()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    invoke-interface {v2}, Lhm/i;->a()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Lhm/i;->a()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_1
    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string p0, "-----"

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "All tests successful."

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Completed with "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " FAILURES:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "=>  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhm/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public a([BII[BII)Z
    .locals 0

    invoke-static/range {p1 .. p6}, Lorg/bouncycastle/util/a;->f([BII[BII)Z

    move-result p1

    return p1
.end method

.method public b([B[B)Z
    .locals 0

    invoke-static {p1, p2}, Lorg/bouncycastle/util/a;->g([B[B)Z

    move-result p1

    return p1
.end method

.method public c([[B[[B)Z
    .locals 5

    const/4 v0, 0x1

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    move v2, v1

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_4

    aget-object v3, p1, v2

    aget-object v4, p2, v2

    invoke-virtual {p0, v3, v4}, Lhm/c;->b([B[B)Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/util/test/TestFailedException;

    invoke-static {p0, p1}, Lhm/d;->c(Lhm/e;Ljava/lang/String;)Lhm/i;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/util/test/TestFailedException;-><init>(Lhm/i;)V

    throw v0
.end method

.method public e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/util/test/TestFailedException;

    invoke-static {p0, p1, p2, p3}, Lhm/d;->d(Lhm/e;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lhm/i;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/util/test/TestFailedException;-><init>(Lhm/i;)V

    throw v0
.end method

.method public f(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/util/test/TestFailedException;

    invoke-static {p0, p1, p2}, Lhm/d;->e(Lhm/e;Ljava/lang/String;Ljava/lang/Throwable;)Lhm/i;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/util/test/TestFailedException;-><init>(Lhm/i;)V

    throw v0
.end method

.method public g(II)V
    .locals 0

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    new-instance p1, Lorg/bouncycastle/util/test/TestFailedException;

    const-string p2, "no message"

    invoke-static {p0, p2}, Lhm/d;->c(Lhm/e;Ljava/lang/String;)Lhm/i;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/bouncycastle/util/test/TestFailedException;-><init>(Lhm/i;)V

    throw p1
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public h(JJ)V
    .locals 0

    cmp-long p1, p1, p3

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lorg/bouncycastle/util/test/TestFailedException;

    const-string p2, "no message"

    invoke-static {p0, p2}, Lhm/d;->c(Lhm/e;Ljava/lang/String;)Lhm/i;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/bouncycastle/util/test/TestFailedException;-><init>(Lhm/i;)V

    throw p1
.end method

.method public i(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lorg/bouncycastle/util/test/TestFailedException;

    const-string p2, "no message"

    invoke-static {p0, p2}, Lhm/d;->c(Lhm/e;Ljava/lang/String;)Lhm/i;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/bouncycastle/util/test/TestFailedException;-><init>(Lhm/i;)V

    throw p1
.end method

.method public j(Ljava/lang/String;JJ)V
    .locals 0

    cmp-long p2, p2, p4

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance p2, Lorg/bouncycastle/util/test/TestFailedException;

    invoke-static {p0, p1}, Lhm/d;->c(Lhm/e;Ljava/lang/String;)Lhm/i;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/bouncycastle/util/test/TestFailedException;-><init>(Lhm/i;)V

    throw p2
.end method

.method public k(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_3

    if-eqz p3, :cond_2

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    :cond_1
    new-instance p2, Lorg/bouncycastle/util/test/TestFailedException;

    invoke-static {p0, p1}, Lhm/d;->c(Lhm/e;Ljava/lang/String;)Lhm/i;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/bouncycastle/util/test/TestFailedException;-><init>(Lhm/i;)V

    throw p2

    :cond_2
    new-instance p2, Lorg/bouncycastle/util/test/TestFailedException;

    invoke-static {p0, p1}, Lhm/d;->c(Lhm/e;Ljava/lang/String;)Lhm/i;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/bouncycastle/util/test/TestFailedException;-><init>(Lhm/i;)V

    throw p2

    :cond_3
    new-instance p2, Lorg/bouncycastle/util/test/TestFailedException;

    invoke-static {p0, p1}, Lhm/d;->c(Lhm/e;Ljava/lang/String;)Lhm/i;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/bouncycastle/util/test/TestFailedException;-><init>(Lhm/i;)V

    throw p2
.end method

.method public l(Ljava/lang/String;ZZ)V
    .locals 0

    if-ne p2, p3, :cond_0

    return-void

    :cond_0
    new-instance p2, Lorg/bouncycastle/util/test/TestFailedException;

    invoke-static {p0, p1}, Lhm/d;->c(Lhm/e;Ljava/lang/String;)Lhm/i;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/bouncycastle/util/test/TestFailedException;-><init>(Lhm/i;)V

    throw p2
.end method

.method public m(ZZ)V
    .locals 0

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    new-instance p1, Lorg/bouncycastle/util/test/TestFailedException;

    const-string p2, "no message"

    invoke-static {p0, p2}, Lhm/d;->c(Lhm/e;Ljava/lang/String;)Lhm/i;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/bouncycastle/util/test/TestFailedException;-><init>(Lhm/i;)V

    throw p1
.end method

.method public n(Ljava/lang/String;Z)V
    .locals 0

    if-eqz p2, :cond_0

    return-void

    :cond_0
    new-instance p2, Lorg/bouncycastle/util/test/TestFailedException;

    invoke-static {p0, p1}, Lhm/d;->c(Lhm/e;Ljava/lang/String;)Lhm/i;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/bouncycastle/util/test/TestFailedException;-><init>(Lhm/i;)V

    throw p2
.end method

.method public o(Z)V
    .locals 1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lorg/bouncycastle/util/test/TestFailedException;

    const-string v0, "no message"

    invoke-static {p0, v0}, Lhm/d;->c(Lhm/e;Ljava/lang/String;)Lhm/i;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/bouncycastle/util/test/TestFailedException;-><init>(Lhm/i;)V

    throw p1
.end method

.method public abstract p()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public perform()Lhm/i;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lhm/c;->p()V

    invoke-virtual {p0}, Lhm/c;->u()Lhm/i;

    move-result-object v0
    :try_end_0
    .catch Lorg/bouncycastle/util/test/TestFailedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lhm/d;->e(Lhm/e;Ljava/lang/String;Ljava/lang/Throwable;)Lhm/i;

    move-result-object v0

    return-object v0

    :goto_1
    invoke-virtual {v0}, Lorg/bouncycastle/util/test/TestFailedException;->getResult()Lhm/i;

    move-result-object v0

    return-object v0
.end method

.method public final u()Lhm/i;
    .locals 1

    const-string v0, "Okay"

    invoke-static {p0, v0}, Lhm/d;->g(Lhm/e;Ljava/lang/String;)Lhm/i;

    move-result-object v0

    return-object v0
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;Lhm/c$a;)Ljava/lang/Exception;
    .locals 4

    :try_start_0
    invoke-interface {p3}, Lhm/c$a;->a()V

    invoke-virtual {p0, p1}, Lhm/c;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    invoke-virtual {p0, v2, p1}, Lhm/c;->n(Ljava/lang/String;Z)V

    :cond_1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_2

    move v0, v1

    :cond_2
    invoke-virtual {p0, v0}, Lhm/c;->o(Z)V

    return-object p3
.end method
