.class public final synthetic Lorg/openjdk/tools/javac/comp/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/comp/ArgumentAttr;

.field public final synthetic c:Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/comp/ArgumentAttr;Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/q;->b:Lorg/openjdk/tools/javac/comp/ArgumentAttr;

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/q;->c:Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/q;->b:Lorg/openjdk/tools/javac/comp/ArgumentAttr;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/q;->c:Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;

    invoke-static {v0, v1, p1}, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->e(Lorg/openjdk/tools/javac/comp/ArgumentAttr;Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;)Lorg/openjdk/tools/javac/comp/ArgumentAttr$ConditionalType;

    move-result-object p1

    return-object p1
.end method
