.class public final synthetic Lorg/openjdk/tools/javac/comp/N;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/code/DeferredLintHandler$LintLogger;


# instance fields
.field public final synthetic a:Lorg/openjdk/tools/javac/comp/Check;

.field public final synthetic b:Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/comp/Check;Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/N;->a:Lorg/openjdk/tools/javac/comp/Check;

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/N;->b:Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;

    return-void
.end method


# virtual methods
.method public final report()V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/N;->a:Lorg/openjdk/tools/javac/comp/Check;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/N;->b:Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;

    invoke-static {v0, v1}, Lorg/openjdk/tools/javac/comp/Check;->j(Lorg/openjdk/tools/javac/comp/Check;Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;)V

    return-void
.end method
