.class public final synthetic Lorg/openjdk/tools/javac/comp/y0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/y0;->b:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/y0;->b:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    check-cast p1, Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/Symbol;->appendUniqueTypeAttributes(Lorg/openjdk/tools/javac/util/List;)V

    return-void
.end method
