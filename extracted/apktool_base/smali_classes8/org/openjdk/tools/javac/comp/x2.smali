.class public final synthetic Lorg/openjdk/tools/javac/comp/x2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/comp/TypeEnter;

.field public final synthetic c:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

.field public final synthetic d:Lorg/openjdk/tools/javac/comp/Env;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/comp/TypeEnter;Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;Lorg/openjdk/tools/javac/comp/Env;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/x2;->b:Lorg/openjdk/tools/javac/comp/TypeEnter;

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/x2;->c:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iput-object p3, p0, Lorg/openjdk/tools/javac/comp/x2;->d:Lorg/openjdk/tools/javac/comp/Env;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/x2;->b:Lorg/openjdk/tools/javac/comp/TypeEnter;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/x2;->c:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/x2;->d:Lorg/openjdk/tools/javac/comp/Env;

    invoke-static {v0, v1, v2}, Lorg/openjdk/tools/javac/comp/TypeEnter;->f(Lorg/openjdk/tools/javac/comp/TypeEnter;Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;Lorg/openjdk/tools/javac/comp/Env;)V

    return-void
.end method
