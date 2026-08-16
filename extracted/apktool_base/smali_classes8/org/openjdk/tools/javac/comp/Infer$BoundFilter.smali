.class public Lorg/openjdk/tools/javac/comp/Infer$BoundFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/util/Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Infer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BoundFilter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/openjdk/tools/javac/util/Filter<",
        "Lorg/openjdk/tools/javac/code/Type;",
        ">;"
    }
.end annotation


# instance fields
.field inferenceContext:Lorg/openjdk/tools/javac/comp/InferenceContext;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/InferenceContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Infer$BoundFilter;->inferenceContext:Lorg/openjdk/tools/javac/comp/InferenceContext;

    return-void
.end method


# virtual methods
.method public bridge synthetic accepts(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Infer$BoundFilter;->accepts(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p1

    return p1
.end method

.method public accepts(Lorg/openjdk/tools/javac/code/Type;)Z
    .locals 1

    .line 2
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->isErroneous()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Infer$BoundFilter;->inferenceContext:Lorg/openjdk/tools/javac/comp/InferenceContext;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/comp/InferenceContext;->free(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->BOT:Lorg/openjdk/tools/javac/code/TypeTag;

    .line 3
    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
