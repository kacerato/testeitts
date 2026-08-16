.class public LSi/w$a;
.super LLi/F0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LSi/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, LLi/F0;-><init>(I)V

    return-void
.end method


# virtual methods
.method public z()I
    .locals 1

    invoke-super {p0}, LLi/D0;->v()I

    move-result v0

    return v0
.end method
