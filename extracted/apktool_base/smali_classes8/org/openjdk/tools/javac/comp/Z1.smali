.class public final synthetic Lorg/openjdk/tools/javac/comp/Z1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/code/Symtab;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/code/Symtab;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Z1;->b:Lorg/openjdk/tools/javac/code/Symtab;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Z1;->b:Lorg/openjdk/tools/javac/code/Symtab;

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    check-cast p2, Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/code/Symtab;->enterPackage(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object p1

    return-object p1
.end method
