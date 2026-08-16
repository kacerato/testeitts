.class public final synthetic Lorg/openjdk/tools/javac/main/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/main/Option;

.field public final synthetic c:Lorg/openjdk/tools/javac/util/Log;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/main/Option;Lorg/openjdk/tools/javac/util/Log;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/main/l;->b:Lorg/openjdk/tools/javac/main/Option;

    iput-object p2, p0, Lorg/openjdk/tools/javac/main/l;->c:Lorg/openjdk/tools/javac/util/Log;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/l;->b:Lorg/openjdk/tools/javac/main/Option;

    iget-object v1, p0, Lorg/openjdk/tools/javac/main/l;->c:Lorg/openjdk/tools/javac/util/Log;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lorg/openjdk/tools/javac/main/Option;->c(Lorg/openjdk/tools/javac/main/Option;Lorg/openjdk/tools/javac/util/Log;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
