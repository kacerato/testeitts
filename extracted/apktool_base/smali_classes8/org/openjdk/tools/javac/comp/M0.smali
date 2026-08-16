.class public final synthetic Lorg/openjdk/tools/javac/comp/M0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/comp/Lower$TreeBuilder;


# instance fields
.field public final synthetic a:Lorg/openjdk/tools/javac/comp/Lower;

.field public final synthetic b:Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/comp/Lower;Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/M0;->a:Lorg/openjdk/tools/javac/comp/Lower;

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/M0;->b:Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;

    iput-boolean p3, p0, Lorg/openjdk/tools/javac/comp/M0;->c:Z

    return-void
.end method


# virtual methods
.method public final build(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/M0;->a:Lorg/openjdk/tools/javac/comp/Lower;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/M0;->b:Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;

    iget-boolean v2, p0, Lorg/openjdk/tools/javac/comp/M0;->c:Z

    invoke-static {v0, v1, v2, p1}, Lorg/openjdk/tools/javac/comp/Lower;->c(Lorg/openjdk/tools/javac/comp/Lower;Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;ZLorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    return-object p1
.end method
