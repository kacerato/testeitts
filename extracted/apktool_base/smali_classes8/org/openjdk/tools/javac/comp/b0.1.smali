.class public final synthetic Lorg/openjdk/tools/javac/comp/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/util/Filter;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/tree/JCTree;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/tree/JCTree;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/b0;->b:Lorg/openjdk/tools/javac/tree/JCTree;

    return-void
.end method


# virtual methods
.method public final accepts(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/b0;->b:Lorg/openjdk/tools/javac/tree/JCTree;

    check-cast p1, Lorg/openjdk/tools/javac/util/JCDiagnostic;

    invoke-static {v0, p1}, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrDiagHandler;->a(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/util/JCDiagnostic;)Z

    move-result p1

    return p1
.end method
