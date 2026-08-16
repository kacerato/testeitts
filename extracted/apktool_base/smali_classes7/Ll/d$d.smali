.class public LLl/d$d;
.super LLl/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLl/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, LOl/v;->l:LOl/v;

    invoke-direct {p0, v0}, LLl/d;-><init>(LOl/v;)V

    return-void
.end method
