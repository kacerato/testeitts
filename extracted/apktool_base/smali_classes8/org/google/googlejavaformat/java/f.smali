.class public final synthetic Lorg/google/googlejavaformat/java/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw2/I;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lorg/openjdk/source/tree/ExpressionTree;

    invoke-static {p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->a(Lorg/openjdk/source/tree/ExpressionTree;)Z

    move-result p1

    return p1
.end method
