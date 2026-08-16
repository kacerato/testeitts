.class public final synthetic Lorg/openjdk/tools/javac/comp/O0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Ljava/util/Set;

.field public final synthetic c:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/O0;->b:Ljava/util/Set;

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/O0;->c:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/O0;->b:Ljava/util/Set;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/O0;->c:Ljava/util/Set;

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-static {v0, v1, p1}, Lorg/openjdk/tools/javac/comp/Modules;->c(Ljava/util/Set;Ljava/util/Set;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)V

    return-void
.end method
