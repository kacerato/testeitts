.class public Lorg/openjdk/tools/javah/Main;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javah/JavahTask;

    invoke-direct {v0}, Lorg/openjdk/tools/javah/JavahTask;-><init>()V

    invoke-virtual {v0, p0}, Lorg/openjdk/tools/javah/JavahTask;->run([Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public static run([Ljava/lang/String;Ljava/io/PrintWriter;)I
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javah/JavahTask;

    invoke-direct {v0}, Lorg/openjdk/tools/javah/JavahTask;-><init>()V

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javah/JavahTask;->setLog(Ljava/io/PrintWriter;)V

    invoke-virtual {v0, p0}, Lorg/openjdk/tools/javah/JavahTask;->run([Ljava/lang/String;)I

    move-result p0

    return p0
.end method
