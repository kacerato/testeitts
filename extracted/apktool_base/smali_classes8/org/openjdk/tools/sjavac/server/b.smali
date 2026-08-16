.class public final synthetic Lorg/openjdk/tools/sjavac/server/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/sjavac/server/RequestHandler$1;

.field public final synthetic c:Lorg/openjdk/tools/sjavac/Log$Level;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/sjavac/server/RequestHandler$1;Lorg/openjdk/tools/sjavac/Log$Level;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/sjavac/server/b;->b:Lorg/openjdk/tools/sjavac/server/RequestHandler$1;

    iput-object p2, p0, Lorg/openjdk/tools/sjavac/server/b;->c:Lorg/openjdk/tools/sjavac/Log$Level;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/server/b;->b:Lorg/openjdk/tools/sjavac/server/RequestHandler$1;

    iget-object v1, p0, Lorg/openjdk/tools/sjavac/server/b;->c:Lorg/openjdk/tools/sjavac/Log$Level;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lorg/openjdk/tools/sjavac/server/RequestHandler$1;->b(Lorg/openjdk/tools/sjavac/server/RequestHandler$1;Lorg/openjdk/tools/sjavac/Log$Level;Ljava/lang/String;)V

    return-void
.end method
