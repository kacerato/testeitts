.class public LSi/v$b;
.super LLi/D0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LSi/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, LLi/D0;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(LSi/v$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, LSi/v$b;-><init>()V

    return-void
.end method


# virtual methods
.method public y()I
    .locals 1

    invoke-super {p0}, LLi/D0;->v()I

    move-result v0

    return v0
.end method
