.class public LPj/e$a;
.super LPj/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LPj/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, LLi/z;

    invoke-direct {v0}, LLi/z;-><init>()V

    invoke-direct {p0, v0}, LPj/e;-><init>(LBi/b;)V

    return-void
.end method
