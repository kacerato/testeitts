.class public final synthetic Lorg/openjdk/tools/javac/comp/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/comp/Infer$FreeTypeListener;


# instance fields
.field public final synthetic a:Lorg/openjdk/tools/javac/comp/Attr;

.field public final synthetic b:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

.field public final synthetic c:Lorg/openjdk/tools/javac/comp/InferenceContext;

.field public final synthetic d:Lorg/openjdk/tools/javac/tree/JCTree;

.field public final synthetic e:Lorg/openjdk/tools/javac/code/Type;

.field public final synthetic f:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/comp/InferenceContext;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/z;->a:Lorg/openjdk/tools/javac/comp/Attr;

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/z;->b:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iput-object p3, p0, Lorg/openjdk/tools/javac/comp/z;->c:Lorg/openjdk/tools/javac/comp/InferenceContext;

    iput-object p4, p0, Lorg/openjdk/tools/javac/comp/z;->d:Lorg/openjdk/tools/javac/tree/JCTree;

    iput-object p5, p0, Lorg/openjdk/tools/javac/comp/z;->e:Lorg/openjdk/tools/javac/code/Type;

    iput-object p6, p0, Lorg/openjdk/tools/javac/comp/z;->f:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    return-void
.end method


# virtual methods
.method public final typesInferred(Lorg/openjdk/tools/javac/comp/InferenceContext;)V
    .locals 7

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/z;->a:Lorg/openjdk/tools/javac/comp/Attr;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/z;->b:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/z;->c:Lorg/openjdk/tools/javac/comp/InferenceContext;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/z;->d:Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/z;->e:Lorg/openjdk/tools/javac/code/Type;

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/z;->f:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lorg/openjdk/tools/javac/comp/Attr;->j(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/comp/InferenceContext;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;Lorg/openjdk/tools/javac/comp/InferenceContext;)V

    return-void
.end method
