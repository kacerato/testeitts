.class public final synthetic Lorg/openjdk/tools/javac/comp/s0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/comp/Infer$FreeTypeListener;


# instance fields
.field public final synthetic a:Lorg/openjdk/tools/javac/comp/InferenceContext;

.field public final synthetic b:Lorg/openjdk/tools/javac/code/Type;

.field public final synthetic c:Lorg/openjdk/tools/javac/util/Warner;

.field public final synthetic d:Lorg/openjdk/tools/javac/comp/InferenceContext$ReachabilityVisitor;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/comp/InferenceContext;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Warner;Lorg/openjdk/tools/javac/comp/InferenceContext$ReachabilityVisitor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/s0;->a:Lorg/openjdk/tools/javac/comp/InferenceContext;

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/s0;->b:Lorg/openjdk/tools/javac/code/Type;

    iput-object p3, p0, Lorg/openjdk/tools/javac/comp/s0;->c:Lorg/openjdk/tools/javac/util/Warner;

    iput-object p4, p0, Lorg/openjdk/tools/javac/comp/s0;->d:Lorg/openjdk/tools/javac/comp/InferenceContext$ReachabilityVisitor;

    return-void
.end method


# virtual methods
.method public final typesInferred(Lorg/openjdk/tools/javac/comp/InferenceContext;)V
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/s0;->a:Lorg/openjdk/tools/javac/comp/InferenceContext;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/s0;->b:Lorg/openjdk/tools/javac/code/Type;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/s0;->c:Lorg/openjdk/tools/javac/util/Warner;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/s0;->d:Lorg/openjdk/tools/javac/comp/InferenceContext$ReachabilityVisitor;

    invoke-static {v0, v1, v2, v3, p1}, Lorg/openjdk/tools/javac/comp/InferenceContext;->a(Lorg/openjdk/tools/javac/comp/InferenceContext;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Warner;Lorg/openjdk/tools/javac/comp/InferenceContext$ReachabilityVisitor;Lorg/openjdk/tools/javac/comp/InferenceContext;)V

    return-void
.end method
