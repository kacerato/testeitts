.class public final synthetic Lorg/openjdk/tools/javac/comp/c1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lorg/openjdk/tools/javac/code/Directive$ExportsDirective;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Modules;->d(Lorg/openjdk/tools/javac/code/Directive$ExportsDirective;)Z

    move-result p1

    return p1
.end method
