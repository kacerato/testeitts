.class Lorg/openjdk/tools/javac/jvm/ClassReader$ParameterAnnotations;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/jvm/ClassReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParameterAnnotations"
.end annotation


# instance fields
.field proxies:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/jvm/ClassReader$CompoundAnnotationProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lorg/openjdk/tools/javac/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/jvm/ClassReader$CompoundAnnotationProxy;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$ParameterAnnotations;->proxies:Lorg/openjdk/tools/javac/util/List;

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$ParameterAnnotations;->proxies:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/List;->prependList(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$ParameterAnnotations;->proxies:Lorg/openjdk/tools/javac/util/List;

    :goto_0
    return-void
.end method
