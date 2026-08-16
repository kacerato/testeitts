.class public final synthetic Lorg/openjdk/tools/javac/comp/C1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/code/Type;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/code/Type;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/C1;->b:Lorg/openjdk/tools/javac/code/Type;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/C1;->b:Lorg/openjdk/tools/javac/code/Type;

    check-cast p1, Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;

    invoke-static {v0, p1}, Lorg/openjdk/tools/javac/comp/Operators;->b(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;)Z

    move-result p1

    return p1
.end method
