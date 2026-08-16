.class public final synthetic Lorg/openjdk/tools/javac/comp/E1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

.field public final synthetic c:Lorg/openjdk/tools/javac/code/Type;

.field public final synthetic d:Lorg/openjdk/tools/javac/code/Type;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/E1;->b:Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/E1;->c:Lorg/openjdk/tools/javac/code/Type;

    iput-object p3, p0, Lorg/openjdk/tools/javac/comp/E1;->d:Lorg/openjdk/tools/javac/code/Type;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/E1;->b:Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/E1;->c:Lorg/openjdk/tools/javac/code/Type;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/E1;->d:Lorg/openjdk/tools/javac/code/Type;

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    invoke-static {v0, v1, v2, p1}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->c(Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;)Z

    move-result p1

    return p1
.end method
