.class public interface abstract Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeCompleter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Annotate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AnnotationTypeCompleter"
.end annotation


# virtual methods
.method public abstract complete(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;
        }
    .end annotation
.end method
