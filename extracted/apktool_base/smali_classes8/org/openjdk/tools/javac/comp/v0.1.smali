.class public final synthetic Lorg/openjdk/tools/javac/comp/v0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/comp/Infer$FreeTypeListener;


# instance fields
.field public final synthetic a:Lorg/openjdk/tools/javac/comp/InferenceContext;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/comp/InferenceContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/v0;->a:Lorg/openjdk/tools/javac/comp/InferenceContext;

    return-void
.end method


# virtual methods
.method public final typesInferred(Lorg/openjdk/tools/javac/comp/InferenceContext;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/v0;->a:Lorg/openjdk/tools/javac/comp/InferenceContext;

    invoke-static {v0, p1}, Lorg/openjdk/tools/javac/comp/InferenceContext;->d(Lorg/openjdk/tools/javac/comp/InferenceContext;Lorg/openjdk/tools/javac/comp/InferenceContext;)V

    return-void
.end method
