.class public final synthetic Lorg/openjdk/tools/javac/comp/B1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/comp/Operators;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/comp/Operators;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/B1;->b:Lorg/openjdk/tools/javac/comp/Operators;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/B1;->b:Lorg/openjdk/tools/javac/comp/Operators;

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    invoke-static {v0, p1}, Lorg/openjdk/tools/javac/comp/Operators;->g(Lorg/openjdk/tools/javac/comp/Operators;Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;)Z

    move-result p1

    return p1
.end method
