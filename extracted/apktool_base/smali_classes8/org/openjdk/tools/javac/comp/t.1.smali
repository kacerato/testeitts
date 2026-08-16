.class public final synthetic Lorg/openjdk/tools/javac/comp/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/comp/ArgumentAttr;

.field public final synthetic c:Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/comp/ArgumentAttr;Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/t;->b:Lorg/openjdk/tools/javac/comp/ArgumentAttr;

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/t;->c:Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/t;->b:Lorg/openjdk/tools/javac/comp/ArgumentAttr;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/t;->c:Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;

    invoke-static {v0, v1, p1}, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->f(Lorg/openjdk/tools/javac/comp/ArgumentAttr;Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;)Lorg/openjdk/tools/javac/comp/ArgumentAttr$ResolvedConstructorType;

    move-result-object p1

    return-object p1
.end method
