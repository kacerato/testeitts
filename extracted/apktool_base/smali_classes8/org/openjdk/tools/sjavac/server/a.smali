.class public final synthetic Lorg/openjdk/tools/sjavac/server/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/sjavac/Log$Level;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/sjavac/Log$Level;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/sjavac/server/a;->b:Lorg/openjdk/tools/sjavac/Log$Level;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/server/a;->b:Lorg/openjdk/tools/sjavac/Log$Level;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/openjdk/tools/sjavac/server/RequestHandler$1;->a(Lorg/openjdk/tools/sjavac/Log$Level;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
