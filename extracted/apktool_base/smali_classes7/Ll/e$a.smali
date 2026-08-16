.class public LLl/e$a;
.super LLl/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLl/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, LIi/B;

    invoke-direct {v0}, LIi/B;-><init>()V

    new-instance v1, Lol/w;

    invoke-direct {v1}, Lol/w;-><init>()V

    invoke-direct {p0, v0, v1}, LLl/e;-><init>(LBi/y;Lol/w;)V

    return-void
.end method
