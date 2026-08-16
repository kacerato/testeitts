.class Lorg/eclipse/jdt/internal/compiler/util/Messages$MessagesProperties;
.super Ljava/util/Properties;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/compiler/util/Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessagesProperties"
.end annotation


# static fields
.field private static final MOD_EXPECTED:I = 0x9

.field private static final MOD_MASK:I = 0x19

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final fields:Ljava/util/Map;


# direct methods
.method public constructor <init>([Ljava/lang/reflect/Field;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/util/Properties;-><init>()V

    array-length p2, p1

    new-instance v0, Ljava/util/HashMap;

    mul-int/lit8 v1, p2, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/util/Messages$MessagesProperties;->fields:Ljava/util/Map;

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p2, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/util/Messages$MessagesProperties;->fields:Ljava/util/Map;

    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/util/Messages$MessagesProperties;->fields:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/lit8 v1, v1, 0x19

    const/16 v2, 0x9

    if-eq v1, v2, :cond_1

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_2
    invoke-virtual {p1, v0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :catch_0
    :goto_0
    monitor-exit p0

    return-object v0
.end method
