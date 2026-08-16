.class public final synthetic Lorg/openjdk/tools/javac/code/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Symtab;->i(Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;)Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    move-result-object p1

    return-object p1
.end method
