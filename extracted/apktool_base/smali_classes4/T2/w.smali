.class public final synthetic LT2/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ljava/util/Map$Entry;

.field public final synthetic c:LX2/a;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map$Entry;LX2/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT2/w;->b:Ljava/util/Map$Entry;

    iput-object p2, p0, LT2/w;->c:LX2/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LT2/w;->b:Ljava/util/Map$Entry;

    iget-object v1, p0, LT2/w;->c:LX2/a;

    invoke-static {v0, v1}, LT2/x;->e(Ljava/util/Map$Entry;LX2/a;)V

    return-void
.end method
