.class public final synthetic Lorg/openjdk/tools/sjavac/pubapi/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/sjavac/pubapi/l;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/pubapi/l;->b:Ljava/util/List;

    check-cast p1, Lorg/openjdk/tools/sjavac/pubapi/PubType;

    invoke-static {v0, p1}, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->c(Ljava/util/List;Lorg/openjdk/tools/sjavac/pubapi/PubType;)V

    return-void
.end method
