.class public Lcom/bumptech/glide/load/engine/i$c;
.super Lcom/bumptech/glide/load/engine/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c(LC/a;)Z
    .locals 1

    sget-object v0, LC/a;->DATA_DISK_CACHE:LC/a;

    if-eq p1, v0, :cond_0

    sget-object v0, LC/a;->MEMORY_CACHE:LC/a;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public d(ZLC/a;LC/c;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
