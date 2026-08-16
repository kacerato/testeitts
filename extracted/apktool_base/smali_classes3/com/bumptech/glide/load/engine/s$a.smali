.class public Lcom/bumptech/glide/load/engine/s$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZ/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LZ/a$d<",
        "Lcom/bumptech/glide/load/engine/s<",
        "*>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/bumptech/glide/load/engine/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/engine/s<",
            "*>;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/engine/s;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/s;-><init>()V

    return-object v0
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/s$a;->a()Lcom/bumptech/glide/load/engine/s;

    move-result-object v0

    return-object v0
.end method
