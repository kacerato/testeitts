.class public LSj/h$g;
.super LSj/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LSj/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-static {}, Lorg/bouncycastle/crypto/util/g;->t()LBi/y;

    move-result-object v0

    new-instance v1, LLi/e0;

    invoke-direct {v1}, LLi/e0;-><init>()V

    invoke-direct {p0, v0, v1}, LSj/h;-><init>(LBi/y;LBi/b;)V

    return-void
.end method
