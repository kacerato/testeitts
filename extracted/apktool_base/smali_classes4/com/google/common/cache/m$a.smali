.class public Lcom/google/common/cache/m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw2/Q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lw2/Q<",
        "Lcom/google/common/cache/l;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/cache/l;
    .locals 1

    new-instance v0, Lcom/google/common/cache/n;

    invoke-direct {v0}, Lcom/google/common/cache/n;-><init>()V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/cache/m$a;->a()Lcom/google/common/cache/l;

    move-result-object v0

    return-object v0
.end method
