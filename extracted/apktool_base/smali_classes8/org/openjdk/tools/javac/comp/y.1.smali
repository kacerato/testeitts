.class public final synthetic Lorg/openjdk/tools/javac/comp/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/openjdk/tools/javac/comp/ArgumentAttr$LocalCacheContext;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/comp/ArgumentAttr$LocalCacheContext;->leave()V

    return-void
.end method
