.class public Lcom/google/protobuf/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/d0$b;,
        Lcom/google/protobuf/d0$a;
    }
.end annotation


# static fields
.field public static volatile b:Z = false

.field public static c:Z = true

.field public static final d:Ljava/lang/String; = "com.google.protobuf.Extension"

.field public static volatile e:Lcom/google/protobuf/d0;

.field public static final f:Lcom/google/protobuf/d0;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/protobuf/d0$b;",
            "Lcom/google/protobuf/v0$h<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/protobuf/d0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/d0;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/d0;->f:Lcom/google/protobuf/d0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/d0;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/d0;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget-object v0, Lcom/google/protobuf/d0;->f:Lcom/google/protobuf/d0;

    if-ne p1, v0, :cond_0

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/d0;->a:Ljava/util/Map;

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p1, Lcom/google/protobuf/d0;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/d0;->a:Ljava/util/Map;

    :goto_0
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "empty"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/d0;->a:Ljava/util/Map;

    return-void
.end method

.method public static d()Lcom/google/protobuf/d0;
    .locals 2

    sget-boolean v0, Lcom/google/protobuf/d0;->c:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/protobuf/d0;->f:Lcom/google/protobuf/d0;

    return-object v0

    :cond_0
    sget-object v0, Lcom/google/protobuf/d0;->e:Lcom/google/protobuf/d0;

    if-nez v0, :cond_2

    const-class v1, Lcom/google/protobuf/d0;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/protobuf/d0;->e:Lcom/google/protobuf/d0;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/protobuf/c0;->b()Lcom/google/protobuf/d0;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/d0;->e:Lcom/google/protobuf/d0;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :goto_2
    return-object v0
.end method

.method public static f()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/d0;->b:Z

    return v0
.end method

.method public static g()Lcom/google/protobuf/d0;
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/d0;->c:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/c0;->a()Lcom/google/protobuf/d0;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/protobuf/d0;

    invoke-direct {v0}, Lcom/google/protobuf/d0;-><init>()V

    :goto_0
    return-object v0
.end method

.method public static h(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isEagerlyParse"
        }
    .end annotation

    sput-boolean p0, Lcom/google/protobuf/d0;->b:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/protobuf/a0;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extension"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/a0<",
            "**>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/v0$h;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/v0$h;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/d0;->b(Lcom/google/protobuf/v0$h;)V

    :cond_0
    sget-boolean v0, Lcom/google/protobuf/d0;->c:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/google/protobuf/c0;->d(Lcom/google/protobuf/d0;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "add"

    sget-object v2, Lcom/google/protobuf/d0$a;->a:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Could not invoke ExtensionRegistry#add for %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method public final b(Lcom/google/protobuf/v0$h;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "extension"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/v0$h<",
            "**>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/d0;->a:Ljava/util/Map;

    new-instance v1, Lcom/google/protobuf/d0$b;

    invoke-virtual {p1}, Lcom/google/protobuf/v0$h;->h()Lcom/google/protobuf/b1;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/protobuf/v0$h;->d()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/google/protobuf/d0$b;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public c(Lcom/google/protobuf/b1;I)Lcom/google/protobuf/v0$h;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "containingTypeDefaultInstance",
            "fieldNumber"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/google/protobuf/b1;",
            ">(TContainingType;I)",
            "Lcom/google/protobuf/v0$h<",
            "TContainingType;*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/d0;->a:Ljava/util/Map;

    new-instance v1, Lcom/google/protobuf/d0$b;

    invoke-direct {v1, p1, p2}, Lcom/google/protobuf/d0$b;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/v0$h;

    return-object p1
.end method

.method public e()Lcom/google/protobuf/d0;
    .locals 1

    new-instance v0, Lcom/google/protobuf/d0;

    invoke-direct {v0, p0}, Lcom/google/protobuf/d0;-><init>(Lcom/google/protobuf/d0;)V

    return-object v0
.end method
