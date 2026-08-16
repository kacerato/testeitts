.class public final synthetic Lorg/openjdk/tools/javac/main/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/main/Arguments$ErrorReporter;


# instance fields
.field public final synthetic a:Lorg/openjdk/tools/javac/main/Arguments;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/main/Arguments;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/main/c;->a:Lorg/openjdk/tools/javac/main/Arguments;

    return-void
.end method


# virtual methods
.method public final report(Lorg/openjdk/tools/javac/main/Option;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/c;->a:Lorg/openjdk/tools/javac/main/Arguments;

    invoke-static {v0, p1}, Lorg/openjdk/tools/javac/main/Arguments;->d(Lorg/openjdk/tools/javac/main/Arguments;Lorg/openjdk/tools/javac/main/Option;)V

    return-void
.end method
