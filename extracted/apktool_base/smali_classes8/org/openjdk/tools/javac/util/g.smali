.class public final synthetic Lorg/openjdk/tools/javac/util/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/openjdk/tools/javac/util/ListBuffer;

    check-cast p2, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-static {p1, p2}, Lorg/openjdk/tools/javac/util/List;->a(Lorg/openjdk/tools/javac/util/ListBuffer;Lorg/openjdk/tools/javac/util/ListBuffer;)Lorg/openjdk/tools/javac/util/ListBuffer;

    move-result-object p1

    return-object p1
.end method
