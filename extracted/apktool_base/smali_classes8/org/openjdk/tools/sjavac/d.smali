.class public final synthetic Lorg/openjdk/tools/sjavac/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/openjdk/tools/sjavac/pubapi/PubApi;

    check-cast p2, Lorg/openjdk/tools/sjavac/pubapi/PubApi;

    invoke-static {p1, p2}, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->mergeTypes(Lorg/openjdk/tools/sjavac/pubapi/PubApi;Lorg/openjdk/tools/sjavac/pubapi/PubApi;)Lorg/openjdk/tools/sjavac/pubapi/PubApi;

    move-result-object p1

    return-object p1
.end method
