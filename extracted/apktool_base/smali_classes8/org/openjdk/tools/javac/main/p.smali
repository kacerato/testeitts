.class public final synthetic Lorg/openjdk/tools/javac/main/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/util/Log;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/util/Log;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/main/p;->b:Lorg/openjdk/tools/javac/util/Log;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/p;->b:Lorg/openjdk/tools/javac/util/Log;

    check-cast p1, Lorg/openjdk/tools/javac/main/Option;

    invoke-static {v0, p1}, Lorg/openjdk/tools/javac/main/Option;->e(Lorg/openjdk/tools/javac/util/Log;Lorg/openjdk/tools/javac/main/Option;)V

    return-void
.end method
