.class public final synthetic Lorg/openjdk/tools/javac/comp/s1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/code/Type;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/code/Type;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/s1;->b:Lorg/openjdk/tools/javac/code/Type;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/s1;->b:Lorg/openjdk/tools/javac/code/Type;

    check-cast p1, Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;

    invoke-static {v0, p1}, Lorg/openjdk/tools/javac/comp/Operators;->c(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;)Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    move-result-object p1

    return-object p1
.end method
