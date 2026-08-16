.class public final synthetic Lorg/openjdk/tools/javac/comp/h2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/comp/Infer$FreeTypeListener;


# instance fields
.field public final synthetic a:Lorg/openjdk/tools/javac/comp/Resolve$4;

.field public final synthetic b:Lorg/openjdk/tools/javac/comp/Env;

.field public final synthetic c:Lorg/openjdk/tools/javac/code/Type;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/comp/Resolve$4;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/h2;->a:Lorg/openjdk/tools/javac/comp/Resolve$4;

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/h2;->b:Lorg/openjdk/tools/javac/comp/Env;

    iput-object p3, p0, Lorg/openjdk/tools/javac/comp/h2;->c:Lorg/openjdk/tools/javac/code/Type;

    return-void
.end method


# virtual methods
.method public final typesInferred(Lorg/openjdk/tools/javac/comp/InferenceContext;)V
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/h2;->a:Lorg/openjdk/tools/javac/comp/Resolve$4;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/h2;->b:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/h2;->c:Lorg/openjdk/tools/javac/code/Type;

    invoke-static {v0, v1, v2, p1}, Lorg/openjdk/tools/javac/comp/Resolve$4;->a(Lorg/openjdk/tools/javac/comp/Resolve$4;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/InferenceContext;)V

    return-void
.end method
