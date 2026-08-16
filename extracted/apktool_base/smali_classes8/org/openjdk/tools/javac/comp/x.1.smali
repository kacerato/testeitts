.class public final synthetic Lorg/openjdk/tools/javac/comp/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/comp/Infer$FreeTypeListener;


# instance fields
.field public final synthetic a:Lorg/openjdk/tools/javac/comp/Attr;

.field public final synthetic b:Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;

.field public final synthetic c:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

.field public final synthetic d:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

.field public final synthetic e:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

.field public final synthetic f:Lorg/openjdk/tools/javac/comp/Env;

.field public final synthetic g:Lorg/openjdk/tools/javac/util/List;

.field public final synthetic h:Lorg/openjdk/tools/javac/util/List;

.field public final synthetic i:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/x;->a:Lorg/openjdk/tools/javac/comp/Attr;

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/x;->b:Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;

    iput-object p3, p0, Lorg/openjdk/tools/javac/comp/x;->c:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object p4, p0, Lorg/openjdk/tools/javac/comp/x;->d:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iput-object p5, p0, Lorg/openjdk/tools/javac/comp/x;->e:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iput-object p6, p0, Lorg/openjdk/tools/javac/comp/x;->f:Lorg/openjdk/tools/javac/comp/Env;

    iput-object p7, p0, Lorg/openjdk/tools/javac/comp/x;->g:Lorg/openjdk/tools/javac/util/List;

    iput-object p8, p0, Lorg/openjdk/tools/javac/comp/x;->h:Lorg/openjdk/tools/javac/util/List;

    iput-object p9, p0, Lorg/openjdk/tools/javac/comp/x;->i:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    return-void
.end method


# virtual methods
.method public final typesInferred(Lorg/openjdk/tools/javac/comp/InferenceContext;)V
    .locals 10

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/x;->a:Lorg/openjdk/tools/javac/comp/Attr;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/x;->b:Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/x;->c:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/x;->d:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/x;->e:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/x;->f:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/x;->g:Lorg/openjdk/tools/javac/util/List;

    iget-object v7, p0, Lorg/openjdk/tools/javac/comp/x;->h:Lorg/openjdk/tools/javac/util/List;

    iget-object v8, p0, Lorg/openjdk/tools/javac/comp/x;->i:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    move-object v9, p1

    invoke-static/range {v0 .. v9}, Lorg/openjdk/tools/javac/comp/Attr;->h(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;Lorg/openjdk/tools/javac/comp/InferenceContext;)V

    return-void
.end method
