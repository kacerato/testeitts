.class public final synthetic Lorg/openjdk/tools/javac/comp/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/comp/ArgumentAttr;

.field public final synthetic c:Lorg/openjdk/tools/javac/tree/JCTree$JCParens;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/comp/ArgumentAttr;Lorg/openjdk/tools/javac/tree/JCTree$JCParens;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/p;->b:Lorg/openjdk/tools/javac/comp/ArgumentAttr;

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/p;->c:Lorg/openjdk/tools/javac/tree/JCTree$JCParens;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/p;->b:Lorg/openjdk/tools/javac/comp/ArgumentAttr;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/p;->c:Lorg/openjdk/tools/javac/tree/JCTree$JCParens;

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCParens;

    invoke-static {v0, v1, p1}, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->b(Lorg/openjdk/tools/javac/comp/ArgumentAttr;Lorg/openjdk/tools/javac/tree/JCTree$JCParens;Lorg/openjdk/tools/javac/tree/JCTree$JCParens;)Lorg/openjdk/tools/javac/comp/ArgumentAttr$ParensType;

    move-result-object p1

    return-object p1
.end method
