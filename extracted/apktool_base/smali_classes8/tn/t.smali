.class public final synthetic Ltn/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Ljava/util/Collection;

.field public final synthetic b:Lwn/h;

.field public final synthetic c:Lwn/N;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Collection;Lwn/h;Lwn/N;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltn/t;->a:Ljava/util/Collection;

    iput-object p2, p0, Ltn/t;->b:Lwn/h;

    iput-object p3, p0, Ltn/t;->c:Lwn/N;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Ltn/t;->a:Ljava/util/Collection;

    iget-object v1, p0, Ltn/t;->b:Lwn/h;

    iget-object v2, p0, Ltn/t;->c:Lwn/N;

    check-cast p1, Ljava/lang/Long;

    check-cast p2, Lun/d;

    invoke-static {v0, v1, v2, p1, p2}, Ltn/u;->a(Ljava/util/Collection;Lwn/h;Lwn/N;Ljava/lang/Long;Lun/d;)V

    return-void
.end method
