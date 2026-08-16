.class public final synthetic Lorg/openjdk/tools/javac/main/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/main/Arguments$ErrorReporter;


# instance fields
.field public final synthetic a:Lorg/openjdk/tools/javac/main/Arguments;

.field public final synthetic b:Lorg/openjdk/tools/javac/jvm/Target;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/main/Arguments;Lorg/openjdk/tools/javac/jvm/Target;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/main/e;->a:Lorg/openjdk/tools/javac/main/Arguments;

    iput-object p2, p0, Lorg/openjdk/tools/javac/main/e;->b:Lorg/openjdk/tools/javac/jvm/Target;

    return-void
.end method


# virtual methods
.method public final report(Lorg/openjdk/tools/javac/main/Option;)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/e;->a:Lorg/openjdk/tools/javac/main/Arguments;

    iget-object v1, p0, Lorg/openjdk/tools/javac/main/e;->b:Lorg/openjdk/tools/javac/jvm/Target;

    invoke-static {v0, v1, p1}, Lorg/openjdk/tools/javac/main/Arguments;->c(Lorg/openjdk/tools/javac/main/Arguments;Lorg/openjdk/tools/javac/jvm/Target;Lorg/openjdk/tools/javac/main/Option;)V

    return-void
.end method
