.class public final synthetic Lorg/openjdk/tools/sjavac/pubapi/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/sjavac/pubapi/PubApi;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/sjavac/pubapi/PubApi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/sjavac/pubapi/d;->b:Lorg/openjdk/tools/sjavac/pubapi/PubApi;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/pubapi/d;->b:Lorg/openjdk/tools/sjavac/pubapi/PubApi;

    check-cast p1, Lorg/openjdk/tools/sjavac/pubapi/PubVar;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->addPubVar(Lorg/openjdk/tools/sjavac/pubapi/PubVar;)V

    return-void
.end method
