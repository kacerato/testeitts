.class public final synthetic Lorg/openjdk/tools/javac/comp/r1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/comp/Operators;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/comp/Operators;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/r1;->b:Lorg/openjdk/tools/javac/comp/Operators;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/r1;->b:Lorg/openjdk/tools/javac/comp/Operators;

    check-cast p1, Lorg/openjdk/tools/javac/comp/Operators$OperatorType;

    invoke-static {v0, p1}, Lorg/openjdk/tools/javac/comp/Operators;->i(Lorg/openjdk/tools/javac/comp/Operators;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method
