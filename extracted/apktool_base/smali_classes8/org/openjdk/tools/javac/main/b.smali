.class public final synthetic Lorg/openjdk/tools/javac/main/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/main/Arguments$ErrorReporter;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/main/Arguments$ErrorReporter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/main/b;->b:Lorg/openjdk/tools/javac/main/Arguments$ErrorReporter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/b;->b:Lorg/openjdk/tools/javac/main/Arguments$ErrorReporter;

    check-cast p1, Lorg/openjdk/tools/javac/main/Option;

    invoke-interface {v0, p1}, Lorg/openjdk/tools/javac/main/Arguments$ErrorReporter;->report(Lorg/openjdk/tools/javac/main/Option;)V

    return-void
.end method
