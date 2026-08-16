.class public final synthetic Lorg/openjdk/tools/javac/comp/r0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/util/List;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/r0;->b:Lorg/openjdk/tools/javac/util/List;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/r0;->b:Lorg/openjdk/tools/javac/util/List;

    check-cast p1, Lorg/openjdk/tools/javac/code/Type;

    invoke-static {v0, p1}, Lorg/openjdk/tools/javac/comp/InferenceContext;->b(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p1

    return p1
.end method
