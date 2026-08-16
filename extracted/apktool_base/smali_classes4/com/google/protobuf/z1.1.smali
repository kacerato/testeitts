.class public final Lcom/google/protobuf/z1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/protobuf/B;
.end annotation


# static fields
.field public static final c:Lcom/google/protobuf/z1;


# instance fields
.field public final a:Lcom/google/protobuf/M1;

.field public final b:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/protobuf/L1<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/protobuf/z1;

    invoke-direct {v0}, Lcom/google/protobuf/z1;-><init>()V

    sput-object v0, Lcom/google/protobuf/z1;->c:Lcom/google/protobuf/z1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/z1;->b:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Lcom/google/protobuf/P0;

    invoke-direct {v0}, Lcom/google/protobuf/P0;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/z1;->a:Lcom/google/protobuf/M1;

    return-void
.end method

.method public static a()Lcom/google/protobuf/z1;
    .locals 1

    sget-object v0, Lcom/google/protobuf/z1;->c:Lcom/google/protobuf/z1;

    return-object v0
.end method


# virtual methods
.method public b()I
    .locals 4

    iget-object v0, p0, Lcom/google/protobuf/z1;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/L1;

    instance-of v3, v2, Lcom/google/protobuf/g1;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/google/protobuf/g1;

    invoke-virtual {v2}, Lcom/google/protobuf/g1;->q()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public c(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/z1;->j(Ljava/lang/Object;)Lcom/google/protobuf/L1;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/protobuf/L1;->K1(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public d(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/z1;->j(Ljava/lang/Object;)Lcom/google/protobuf/L1;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/protobuf/L1;->M1(Ljava/lang/Object;)V

    return-void
.end method

.method public e(Ljava/lang/Object;Lcom/google/protobuf/E1;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "reader"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/protobuf/E1;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/google/protobuf/d0;->d()Lcom/google/protobuf/d0;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/protobuf/z1;->f(Ljava/lang/Object;Lcom/google/protobuf/E1;Lcom/google/protobuf/d0;)V

    return-void
.end method

.method public f(Ljava/lang/Object;Lcom/google/protobuf/E1;Lcom/google/protobuf/d0;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "reader",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/protobuf/E1;",
            "Lcom/google/protobuf/d0;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/z1;->j(Ljava/lang/Object;)Lcom/google/protobuf/L1;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/protobuf/L1;->P1(Ljava/lang/Object;Lcom/google/protobuf/E1;Lcom/google/protobuf/d0;)V

    return-void
.end method

.method public g(Ljava/lang/Class;Lcom/google/protobuf/L1;)Lcom/google/protobuf/L1;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "messageType",
            "schema"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/protobuf/L1<",
            "*>;)",
            "Lcom/google/protobuf/L1<",
            "*>;"
        }
    .end annotation

    const-string v0, "messageType"

    invoke-static {p1, v0}, Lcom/google/protobuf/D0;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "schema"

    invoke-static {p2, v0}, Lcom/google/protobuf/D0;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/protobuf/z1;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/L1;

    return-object p1
.end method

.method public h(Ljava/lang/Class;Lcom/google/protobuf/L1;)Lcom/google/protobuf/L1;
    .locals 1
    .annotation build Lcom/google/protobuf/A;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "messageType",
            "schema"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/protobuf/L1<",
            "*>;)",
            "Lcom/google/protobuf/L1<",
            "*>;"
        }
    .end annotation

    const-string v0, "messageType"

    invoke-static {p1, v0}, Lcom/google/protobuf/D0;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "schema"

    invoke-static {p2, v0}, Lcom/google/protobuf/D0;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/protobuf/z1;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/L1;

    return-object p1
.end method

.method public i(Ljava/lang/Class;)Lcom/google/protobuf/L1;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messageType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/protobuf/L1<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "messageType"

    invoke-static {p1, v0}, Lcom/google/protobuf/D0;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/protobuf/z1;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/L1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/z1;->a:Lcom/google/protobuf/M1;

    invoke-interface {v0, p1}, Lcom/google/protobuf/M1;->a(Ljava/lang/Class;)Lcom/google/protobuf/L1;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/z1;->g(Ljava/lang/Class;Lcom/google/protobuf/L1;)Lcom/google/protobuf/L1;

    move-result-object p1

    if-eqz p1, :cond_0

    move-object v0, p1

    :cond_0
    return-object v0
.end method

.method public j(Ljava/lang/Object;)Lcom/google/protobuf/L1;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/protobuf/L1<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/z1;->i(Ljava/lang/Class;)Lcom/google/protobuf/L1;

    move-result-object p1

    return-object p1
.end method

.method public k(Ljava/lang/Object;Lcom/google/protobuf/C2;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "writer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/protobuf/C2;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/z1;->j(Ljava/lang/Object;)Lcom/google/protobuf/L1;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/L1;->J1(Ljava/lang/Object;Lcom/google/protobuf/C2;)V

    return-void
.end method
