.class public final synthetic Lorg/openjdk/tools/javac/comp/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/comp/Infer$FreeTypeListener;


# instance fields
.field public final synthetic a:Lorg/openjdk/tools/javac/comp/Attr;

.field public final synthetic b:Lorg/openjdk/tools/javac/comp/Env;

.field public final synthetic c:Lorg/openjdk/tools/javac/tree/JCTree$JCFunctionalExpression;

.field public final synthetic d:Lorg/openjdk/tools/javac/code/Type;

.field public final synthetic e:Lorg/openjdk/tools/javac/code/Type;

.field public final synthetic f:Lorg/openjdk/tools/javac/code/Type;

.field public final synthetic g:Lorg/openjdk/tools/javac/comp/Check$CheckContext;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCFunctionalExpression;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Check$CheckContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/B;->a:Lorg/openjdk/tools/javac/comp/Attr;

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/B;->b:Lorg/openjdk/tools/javac/comp/Env;

    iput-object p3, p0, Lorg/openjdk/tools/javac/comp/B;->c:Lorg/openjdk/tools/javac/tree/JCTree$JCFunctionalExpression;

    iput-object p4, p0, Lorg/openjdk/tools/javac/comp/B;->d:Lorg/openjdk/tools/javac/code/Type;

    iput-object p5, p0, Lorg/openjdk/tools/javac/comp/B;->e:Lorg/openjdk/tools/javac/code/Type;

    iput-object p6, p0, Lorg/openjdk/tools/javac/comp/B;->f:Lorg/openjdk/tools/javac/code/Type;

    iput-object p7, p0, Lorg/openjdk/tools/javac/comp/B;->g:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    return-void
.end method


# virtual methods
.method public final typesInferred(Lorg/openjdk/tools/javac/comp/InferenceContext;)V
    .locals 8

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/B;->a:Lorg/openjdk/tools/javac/comp/Attr;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/B;->b:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/B;->c:Lorg/openjdk/tools/javac/tree/JCTree$JCFunctionalExpression;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/B;->d:Lorg/openjdk/tools/javac/code/Type;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/B;->e:Lorg/openjdk/tools/javac/code/Type;

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/B;->f:Lorg/openjdk/tools/javac/code/Type;

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/B;->g:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    move-object v7, p1

    invoke-static/range {v0 .. v7}, Lorg/openjdk/tools/javac/comp/Attr;->e(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCFunctionalExpression;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Check$CheckContext;Lorg/openjdk/tools/javac/comp/InferenceContext;)V

    return-void
.end method
