.class public final synthetic Lorg/openjdk/tools/javac/comp/A1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Predicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/A1;->b:Ljava/util/function/Predicate;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/A1;->b:Ljava/util/function/Predicate;

    check-cast p1, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    invoke-static {v0, p1}, Lorg/openjdk/tools/javac/comp/Operators;->f(Ljava/util/function/Predicate;Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;)Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    move-result-object p1

    return-object p1
.end method
