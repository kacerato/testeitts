.class public final synthetic Lorg/openjdk/tools/javac/comp/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/comp/Infer$FreeTypeListener;


# instance fields
.field public final synthetic a:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;

.field public final synthetic b:Lorg/openjdk/tools/javac/code/Type;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;Lorg/openjdk/tools/javac/code/Type;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/D;->a:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/D;->b:Lorg/openjdk/tools/javac/code/Type;

    return-void
.end method


# virtual methods
.method public final typesInferred(Lorg/openjdk/tools/javac/comp/InferenceContext;)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/D;->a:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/D;->b:Lorg/openjdk/tools/javac/code/Type;

    invoke-static {v0, v1, p1}, Lorg/openjdk/tools/javac/comp/Attr;->c(Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/InferenceContext;)V

    return-void
.end method
