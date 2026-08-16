.class public final synthetic Lorg/openjdk/tools/javac/comp/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/util/Filter;


# instance fields
.field public final synthetic b:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/d0;->b:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final accepts(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/d0;->b:Ljava/util/Set;

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-static {v0, p1}, Lorg/openjdk/tools/javac/comp/DeferredAttr$FilterScanner;->a(Ljava/util/Set;Lorg/openjdk/tools/javac/tree/JCTree;)Z

    move-result p1

    return p1
.end method
