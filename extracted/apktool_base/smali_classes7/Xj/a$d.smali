.class public LXj/a$d;
.super LYj/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LXj/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 5

    new-instance v0, Ldk/c;

    invoke-direct {v0}, Ldk/c;-><init>()V

    new-instance v1, LXj/a;

    new-instance v2, Ldk/c;

    invoke-direct {v2}, Ldk/c;-><init>()V

    sget-object v3, LSh/d;->Q:Loh/x;

    sget-object v4, LSh/d;->y:Loh/x;

    invoke-direct {v1, v2, v3, v4}, LXj/a;-><init>(Ldk/f;Loh/x;Loh/x;)V

    invoke-direct {p0, v0, v1}, LYj/a;-><init>(Ldk/f;Ljava/security/KeyStoreSpi;)V

    return-void
.end method
