.class public final synthetic Lorg/openjdk/tools/javac/comp/Y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/comp/DeferredAttr;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/comp/DeferredAttr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Y;->b:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Y;->b:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-static {v0, p1}, Lorg/openjdk/tools/javac/comp/DeferredAttr;->d(Lorg/openjdk/tools/javac/comp/DeferredAttr;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;

    move-result-object p1

    return-object p1
.end method
