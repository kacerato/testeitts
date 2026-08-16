.class public final synthetic Lorg/openjdk/tools/javac/util/a;
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
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies;-><init>(Lorg/openjdk/tools/javac/util/Context;)V

    return-object v0
.end method
