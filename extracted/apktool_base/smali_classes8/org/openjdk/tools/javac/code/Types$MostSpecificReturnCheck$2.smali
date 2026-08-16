.class final enum Lorg/openjdk/tools/javac/code/Types$MostSpecificReturnCheck$2;
.super Lorg/openjdk/tools/javac/code/Types$MostSpecificReturnCheck;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/Types$MostSpecificReturnCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/openjdk/tools/javac/code/Types$MostSpecificReturnCheck;-><init>(Ljava/lang/String;ILorg/openjdk/tools/javac/code/Types$1;)V

    return-void
.end method


# virtual methods
.method public test(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Types;)Z
    .locals 0

    invoke-virtual {p3, p1, p2}, Lorg/openjdk/tools/javac/code/Types;->returnTypeSubstitutable(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p1

    return p1
.end method
