.class public final synthetic Lorg/openjdk/tools/sjavac/comp/dependencies/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/sjavac/comp/PubAPIs;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/sjavac/comp/PubAPIs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/sjavac/comp/dependencies/e;->b:Lorg/openjdk/tools/sjavac/comp/PubAPIs;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/comp/dependencies/e;->b:Lorg/openjdk/tools/sjavac/comp/PubAPIs;

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/sjavac/comp/PubAPIs;->visitPubapi(Lorg/openjdk/javax/lang/model/element/Element;)V

    return-void
.end method
