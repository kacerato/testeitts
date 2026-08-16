.class public final synthetic Lorg/openjdk/tools/javac/comp/l1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/comp/Modules$ModuleVisitor;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/comp/Modules$ModuleVisitor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/l1;->b:Lorg/openjdk/tools/javac/comp/Modules$ModuleVisitor;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/l1;->b:Lorg/openjdk/tools/javac/comp/Modules$ModuleVisitor;

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCDirective;

    invoke-static {v0, p1}, Lorg/openjdk/tools/javac/comp/Modules$ModuleVisitor;->a(Lorg/openjdk/tools/javac/comp/Modules$ModuleVisitor;Lorg/openjdk/tools/javac/tree/JCTree$JCDirective;)V

    return-void
.end method
