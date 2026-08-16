.class public LXj/a$g;
.super LYj/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LXj/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    new-instance v0, Ldk/d;

    invoke-direct {v0}, Ldk/d;-><init>()V

    new-instance v1, LXj/a;

    new-instance v2, Ldk/d;

    invoke-direct {v2}, Ldk/d;-><init>()V

    sget-object v3, LXh/t;->g4:Loh/x;

    invoke-direct {v1, v2, v3, v3}, LXj/a;-><init>(Ldk/f;Loh/x;Loh/x;)V

    invoke-direct {p0, v0, v1}, LYj/a;-><init>(Ldk/f;Ljava/security/KeyStoreSpi;)V

    return-void
.end method
