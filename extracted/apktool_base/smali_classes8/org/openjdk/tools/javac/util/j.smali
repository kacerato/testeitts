.class public final synthetic Lorg/openjdk/tools/javac/util/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/util/Context$Factory;


# instance fields
.field public final synthetic a:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor <init>(Ljava/io/PrintWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/util/j;->a:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public final make(Lorg/openjdk/tools/javac/util/Context;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/j;->a:Ljava/io/PrintWriter;

    invoke-static {v0, p1}, Lorg/openjdk/tools/javac/util/Log;->b(Ljava/io/PrintWriter;Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object p1

    return-object p1
.end method
