.class public final synthetic Lorg/openjdk/tools/sjavac/comp/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/sjavac/comp/PubapiVisitor;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/sjavac/comp/PubapiVisitor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/sjavac/comp/d;->b:Lorg/openjdk/tools/sjavac/comp/PubapiVisitor;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/comp/d;->b:Lorg/openjdk/tools/sjavac/comp/PubapiVisitor;

    check-cast p1, Lorg/openjdk/javax/lang/model/element/TypeParameterElement;

    invoke-static {v0, p1}, Lorg/openjdk/tools/sjavac/comp/PubapiVisitor;->a(Lorg/openjdk/tools/sjavac/comp/PubapiVisitor;Lorg/openjdk/javax/lang/model/element/TypeParameterElement;)Lorg/openjdk/tools/sjavac/pubapi/PubApiTypeParam;

    move-result-object p1

    return-object p1
.end method
