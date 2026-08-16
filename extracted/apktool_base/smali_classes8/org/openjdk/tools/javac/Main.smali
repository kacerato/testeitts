.class public Lorg/openjdk/tools/javac/Main;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compile([Ljava/lang/String;)I
    .locals 2

    .line 1
    new-instance v0, Lorg/openjdk/tools/javac/main/Main;

    const-string v1, "javac"

    invoke-direct {v0, v1}, Lorg/openjdk/tools/javac/main/Main;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p0}, Lorg/openjdk/tools/javac/main/Main;->compile([Ljava/lang/String;)Lorg/openjdk/tools/javac/main/Main$Result;

    move-result-object p0

    iget p0, p0, Lorg/openjdk/tools/javac/main/Main$Result;->exitCode:I

    return p0
.end method

.method public static compile([Ljava/lang/String;Ljava/io/PrintWriter;)I
    .locals 2

    .line 3
    new-instance v0, Lorg/openjdk/tools/javac/main/Main;

    const-string v1, "javac"

    invoke-direct {v0, v1, p1}, Lorg/openjdk/tools/javac/main/Main;-><init>(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 4
    invoke-virtual {v0, p0}, Lorg/openjdk/tools/javac/main/Main;->compile([Ljava/lang/String;)Lorg/openjdk/tools/javac/main/Main$Result;

    move-result-object p0

    iget p0, p0, Lorg/openjdk/tools/javac/main/Main$Result;->exitCode:I

    return p0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p0}, Lorg/openjdk/tools/javac/Main;->compile([Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    return-void
.end method
