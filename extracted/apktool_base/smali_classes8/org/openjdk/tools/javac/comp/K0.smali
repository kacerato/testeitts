.class public final synthetic Lorg/openjdk/tools/javac/comp/K0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/comp/Lower$TreeBuilder;


# instance fields
.field public final synthetic a:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/K0;->a:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    return-void
.end method


# virtual methods
.method public final build(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/K0;->a:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0, p1}, Lorg/openjdk/tools/javac/comp/Lower;->d(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    return-object p1
.end method
