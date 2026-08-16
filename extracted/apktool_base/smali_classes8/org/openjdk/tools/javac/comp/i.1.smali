.class public final synthetic Lorg/openjdk/tools/javac/comp/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/comp/Annotate;

.field public final synthetic c:Lorg/openjdk/tools/javac/comp/Env;

.field public final synthetic d:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/comp/Annotate;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/i;->b:Lorg/openjdk/tools/javac/comp/Annotate;

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/i;->c:Lorg/openjdk/tools/javac/comp/Env;

    iput-object p3, p0, Lorg/openjdk/tools/javac/comp/i;->d:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/i;->b:Lorg/openjdk/tools/javac/comp/Annotate;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/i;->c:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/i;->d:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0, v1, v2}, Lorg/openjdk/tools/javac/comp/Annotate;->d(Lorg/openjdk/tools/javac/comp/Annotate;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)V

    return-void
.end method
