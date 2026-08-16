.class public Lzc/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqd/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lqd/h<",
        "Lzc/a;",
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
.method public bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lzc/b;->b()Lzc/a;

    move-result-object v0

    return-object v0
.end method

.method public b()Lzc/a;
    .locals 1

    new-instance v0, Lzc/a;

    invoke-direct {v0}, Lzc/a;-><init>()V

    return-object v0
.end method
