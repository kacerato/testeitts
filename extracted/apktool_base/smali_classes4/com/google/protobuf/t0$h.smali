.class public abstract Lcom/google/protobuf/t0$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/t0$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/t0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "h"
.end annotation


# instance fields
.field public volatile a:Lcom/google/protobuf/Descriptors$f;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/t0$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/t0$h;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/google/protobuf/Descriptors$f;
.end method

.method public getDescriptor()Lcom/google/protobuf/Descriptors$f;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/t0$h;->a:Lcom/google/protobuf/Descriptors$f;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/t0$h;->a:Lcom/google/protobuf/Descriptors$f;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/t0$h;->a()Lcom/google/protobuf/Descriptors$f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/t0$h;->a:Lcom/google/protobuf/Descriptors$f;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/google/protobuf/t0$h;->a:Lcom/google/protobuf/Descriptors$f;

    return-object v0
.end method
