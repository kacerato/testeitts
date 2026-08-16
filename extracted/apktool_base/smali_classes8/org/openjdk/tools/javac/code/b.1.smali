.class public final synthetic Lorg/openjdk/tools/javac/code/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/code/Symbol$Completer;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/code/ClassFinder;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/code/ClassFinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/b;->b:Lorg/openjdk/tools/javac/code/ClassFinder;

    return-void
.end method


# virtual methods
.method public final complete(Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/b;->b:Lorg/openjdk/tools/javac/code/ClassFinder;

    invoke-static {v0, p1}, Lorg/openjdk/tools/javac/code/ClassFinder;->a(Lorg/openjdk/tools/javac/code/ClassFinder;Lorg/openjdk/tools/javac/code/Symbol;)V

    return-void
.end method
