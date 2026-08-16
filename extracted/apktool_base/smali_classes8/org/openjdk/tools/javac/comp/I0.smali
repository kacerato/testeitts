.class public final synthetic Lorg/openjdk/tools/javac/comp/I0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/comp/Lower$TreeBuilder;


# instance fields
.field public final synthetic a:Lorg/openjdk/tools/javac/comp/Lower;

.field public final synthetic b:Lorg/openjdk/tools/javac/comp/Lower$TreeBuilder;

.field public final synthetic c:Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/comp/Lower;Lorg/openjdk/tools/javac/comp/Lower$TreeBuilder;Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/I0;->a:Lorg/openjdk/tools/javac/comp/Lower;

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/I0;->b:Lorg/openjdk/tools/javac/comp/Lower$TreeBuilder;

    iput-object p3, p0, Lorg/openjdk/tools/javac/comp/I0;->c:Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;

    return-void
.end method


# virtual methods
.method public final build(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/I0;->a:Lorg/openjdk/tools/javac/comp/Lower;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/I0;->b:Lorg/openjdk/tools/javac/comp/Lower$TreeBuilder;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/I0;->c:Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;

    invoke-static {v0, v1, v2, p1}, Lorg/openjdk/tools/javac/comp/Lower;->f(Lorg/openjdk/tools/javac/comp/Lower;Lorg/openjdk/tools/javac/comp/Lower$TreeBuilder;Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    return-object p1
.end method
