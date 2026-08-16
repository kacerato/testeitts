.class public LPj/e$b;
.super LPj/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LPj/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, LKi/c;

    new-instance v1, LLi/z;

    invoke-direct {v1}, LLi/z;-><init>()V

    invoke-direct {v0, v1}, LKi/c;-><init>(LBi/b;)V

    invoke-direct {p0, v0}, LPj/e;-><init>(LBi/b;)V

    return-void
.end method
