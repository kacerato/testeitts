.class public final synthetic Lorg/openjdk/tools/javac/jvm/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/jvm/ClassWriter;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/jvm/ClassWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/a;->b:Lorg/openjdk/tools/javac/jvm/ClassWriter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/a;->b:Lorg/openjdk/tools/javac/jvm/ClassWriter;

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-static {v0, p1}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->a(Lorg/openjdk/tools/javac/jvm/ClassWriter;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V

    return-void
.end method
