.class public final synthetic Lorg/openjdk/tools/javac/comp/p1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/p1;->b:Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/p1;->b:Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCDirective;

    invoke-static {v0, p1}, Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;->c(Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;Lorg/openjdk/tools/javac/tree/JCTree$JCDirective;)V

    return-void
.end method
