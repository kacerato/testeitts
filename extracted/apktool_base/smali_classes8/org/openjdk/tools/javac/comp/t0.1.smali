.class public final synthetic Lorg/openjdk/tools/javac/comp/t0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/comp/Infer$FreeTypeListener;


# instance fields
.field public final synthetic a:Lorg/openjdk/tools/javac/comp/InferenceContext;

.field public final synthetic b:Lorg/openjdk/tools/javac/util/List;

.field public final synthetic c:Lorg/openjdk/tools/javac/util/Warner;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/comp/InferenceContext;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/Warner;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/t0;->a:Lorg/openjdk/tools/javac/comp/InferenceContext;

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/t0;->b:Lorg/openjdk/tools/javac/util/List;

    iput-object p3, p0, Lorg/openjdk/tools/javac/comp/t0;->c:Lorg/openjdk/tools/javac/util/Warner;

    return-void
.end method


# virtual methods
.method public final typesInferred(Lorg/openjdk/tools/javac/comp/InferenceContext;)V
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/t0;->a:Lorg/openjdk/tools/javac/comp/InferenceContext;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/t0;->b:Lorg/openjdk/tools/javac/util/List;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/t0;->c:Lorg/openjdk/tools/javac/util/Warner;

    invoke-static {v0, v1, v2, p1}, Lorg/openjdk/tools/javac/comp/InferenceContext;->f(Lorg/openjdk/tools/javac/comp/InferenceContext;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/Warner;Lorg/openjdk/tools/javac/comp/InferenceContext;)V

    return-void
.end method
