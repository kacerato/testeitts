.class Lorg/openjdk/tools/javac/main/Main$1;
.super Lorg/openjdk/tools/javac/main/OptionHelper$GrumpyHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/main/Main;->compile([Ljava/lang/String;Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/main/Main$Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/main/Main;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/main/Main;Lorg/openjdk/tools/javac/util/Log;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/main/Main$1;->this$0:Lorg/openjdk/tools/javac/main/Main;

    invoke-direct {p0, p2}, Lorg/openjdk/tools/javac/main/OptionHelper$GrumpyHelper;-><init>(Lorg/openjdk/tools/javac/util/Log;)V

    return-void
.end method


# virtual methods
.method public getOwnName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/Main$1;->this$0:Lorg/openjdk/tools/javac/main/Main;

    iget-object v0, v0, Lorg/openjdk/tools/javac/main/Main;->ownName:Ljava/lang/String;

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
