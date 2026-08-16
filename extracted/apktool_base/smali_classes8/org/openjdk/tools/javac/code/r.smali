.class public final synthetic Lorg/openjdk/tools/javac/code/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/util/Filter;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accepts(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->a(Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result p1

    return p1
.end method
