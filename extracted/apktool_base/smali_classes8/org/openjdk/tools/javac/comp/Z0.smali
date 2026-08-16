.class public final synthetic Lorg/openjdk/tools/javac/comp/Z0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/code/Symbol$Completer;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/comp/Modules;

.field public final synthetic c:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/comp/Modules;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Z0;->b:Lorg/openjdk/tools/javac/comp/Modules;

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/Z0;->c:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    return-void
.end method


# virtual methods
.method public final complete(Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Z0;->b:Lorg/openjdk/tools/javac/comp/Modules;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Z0;->c:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-static {v0, v1, p1}, Lorg/openjdk/tools/javac/comp/Modules;->g(Lorg/openjdk/tools/javac/comp/Modules;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/code/Symbol;)V

    return-void
.end method
