.class public final synthetic Lorg/openjdk/tools/javac/code/I;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/code/TypeAnnotations;

.field public final synthetic c:Lorg/openjdk/tools/javac/comp/Env;

.field public final synthetic d:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/code/TypeAnnotations;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/I;->b:Lorg/openjdk/tools/javac/code/TypeAnnotations;

    iput-object p2, p0, Lorg/openjdk/tools/javac/code/I;->c:Lorg/openjdk/tools/javac/comp/Env;

    iput-object p3, p0, Lorg/openjdk/tools/javac/code/I;->d:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/I;->b:Lorg/openjdk/tools/javac/code/TypeAnnotations;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/I;->c:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v2, p0, Lorg/openjdk/tools/javac/code/I;->d:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    invoke-static {v0, v1, v2}, Lorg/openjdk/tools/javac/code/TypeAnnotations;->a(Lorg/openjdk/tools/javac/code/TypeAnnotations;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V

    return-void
.end method
