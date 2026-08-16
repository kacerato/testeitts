.class public final synthetic Lorg/google/googlejavaformat/java/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw2/t;


# instance fields
.field public final synthetic b:Lorg/openjdk/source/tree/DirectiveTree;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/source/tree/DirectiveTree;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/google/googlejavaformat/java/e;->b:Lorg/openjdk/source/tree/DirectiveTree;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/google/googlejavaformat/java/e;->b:Lorg/openjdk/source/tree/DirectiveTree;

    check-cast p1, Lorg/openjdk/source/tree/Tree$Kind;

    invoke-static {v0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->b(Lorg/openjdk/source/tree/DirectiveTree;Lorg/openjdk/source/tree/Tree$Kind;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
