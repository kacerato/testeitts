.class public final synthetic Lorg/openjdk/tools/javac/comp/w0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/comp/InferenceContext$ReachabilityVisitor;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/comp/InferenceContext$ReachabilityVisitor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/w0;->b:Lorg/openjdk/tools/javac/comp/InferenceContext$ReachabilityVisitor;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/w0;->b:Lorg/openjdk/tools/javac/comp/InferenceContext$ReachabilityVisitor;

    check-cast p1, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/Types$UnaryVisitor;->visit(Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/Object;

    return-void
.end method
