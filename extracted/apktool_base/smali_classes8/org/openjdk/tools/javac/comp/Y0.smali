.class public final synthetic Lorg/openjdk/tools/javac/comp/Y0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lorg/openjdk/tools/javac/comp/Modules;

.field public final synthetic b:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

.field public final synthetic c:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/comp/Modules;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Y0;->a:Lorg/openjdk/tools/javac/comp/Modules;

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/Y0;->b:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iput-object p3, p0, Lorg/openjdk/tools/javac/comp/Y0;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Y0;->a:Lorg/openjdk/tools/javac/comp/Modules;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Y0;->b:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Y0;->c:Ljava/util/Map;

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    check-cast p2, Ljava/util/Set;

    invoke-static {v0, v1, v2, p1, p2}, Lorg/openjdk/tools/javac/comp/Modules;->u(Lorg/openjdk/tools/javac/comp/Modules;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Ljava/util/Map;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Ljava/util/Set;)V

    return-void
.end method
