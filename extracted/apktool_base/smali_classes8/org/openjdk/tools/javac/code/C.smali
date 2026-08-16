.class public final synthetic Lorg/openjdk/tools/javac/code/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/code/Symbol$Completer;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/code/Symbol$Completer;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/code/Symbol$Completer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/C;->b:Lorg/openjdk/tools/javac/code/Symbol$Completer;

    return-void
.end method


# virtual methods
.method public final complete(Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/C;->b:Lorg/openjdk/tools/javac/code/Symbol$Completer;

    invoke-interface {v0, p1}, Lorg/openjdk/tools/javac/code/Symbol$Completer;->complete(Lorg/openjdk/tools/javac/code/Symbol;)V

    return-void
.end method
