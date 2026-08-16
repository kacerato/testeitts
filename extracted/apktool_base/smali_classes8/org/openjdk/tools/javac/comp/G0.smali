.class public final synthetic Lorg/openjdk/tools/javac/comp/G0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/comp/Lower$TreeBuilder;


# instance fields
.field public final synthetic a:Lorg/openjdk/tools/javac/comp/Lower;

.field public final synthetic b:Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;

.field public final synthetic c:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/comp/Lower;Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/G0;->a:Lorg/openjdk/tools/javac/comp/Lower;

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/G0;->b:Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;

    iput-object p3, p0, Lorg/openjdk/tools/javac/comp/G0;->c:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-boolean p4, p0, Lorg/openjdk/tools/javac/comp/G0;->d:Z

    return-void
.end method


# virtual methods
.method public final build(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/G0;->a:Lorg/openjdk/tools/javac/comp/Lower;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/G0;->b:Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/G0;->c:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-boolean v3, p0, Lorg/openjdk/tools/javac/comp/G0;->d:Z

    invoke-static {v0, v1, v2, v3, p1}, Lorg/openjdk/tools/javac/comp/Lower;->a(Lorg/openjdk/tools/javac/comp/Lower;Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;ZLorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    return-object p1
.end method
