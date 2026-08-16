.class public final synthetic Lorg/openjdk/tools/javac/code/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

.field public final synthetic c:Lorg/openjdk/tools/javac/comp/Attr;

.field public final synthetic d:Lorg/openjdk/tools/javac/comp/Env;

.field public final synthetic e:Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/t;->b:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iput-object p2, p0, Lorg/openjdk/tools/javac/code/t;->c:Lorg/openjdk/tools/javac/comp/Attr;

    iput-object p3, p0, Lorg/openjdk/tools/javac/code/t;->d:Lorg/openjdk/tools/javac/comp/Env;

    iput-object p4, p0, Lorg/openjdk/tools/javac/code/t;->e:Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/t;->b:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/t;->c:Lorg/openjdk/tools/javac/comp/Attr;

    iget-object v2, p0, Lorg/openjdk/tools/javac/code/t;->d:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v3, p0, Lorg/openjdk/tools/javac/code/t;->e:Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    invoke-static {v0, v1, v2, v3}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->a(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
