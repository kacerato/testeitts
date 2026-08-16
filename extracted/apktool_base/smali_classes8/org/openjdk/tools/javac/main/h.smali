.class public final synthetic Lorg/openjdk/tools/javac/main/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/code/Symbol$Completer;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/main/JavaCompiler;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/main/JavaCompiler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/main/h;->b:Lorg/openjdk/tools/javac/main/JavaCompiler;

    return-void
.end method


# virtual methods
.method public final complete(Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/h;->b:Lorg/openjdk/tools/javac/main/JavaCompiler;

    invoke-static {v0, p1}, Lorg/openjdk/tools/javac/main/JavaCompiler;->d(Lorg/openjdk/tools/javac/main/JavaCompiler;Lorg/openjdk/tools/javac/code/Symbol;)V

    return-void
.end method
