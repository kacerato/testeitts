.class public final synthetic Lorg/openjdk/tools/javac/file/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/util/Context$Factory;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final make(Lorg/openjdk/tools/javac/util/Context;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lorg/openjdk/tools/javac/file/JavacFileManager;->a(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/javax/tools/JavaFileManager;

    move-result-object p1

    return-object p1
.end method
