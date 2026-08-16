.class public final synthetic Lorg/openjdk/tools/javac/comp/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode$StructuralStuckChecker;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode$StructuralStuckChecker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/c0;->b:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode$StructuralStuckChecker;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/c0;->b:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode$StructuralStuckChecker;

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    invoke-static {v0, p1}, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode$StructuralStuckChecker;->a(Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode$StructuralStuckChecker;Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;)Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object p1

    return-object p1
.end method
