.class public LZj/k$I;
.super Lak/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LZj/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "I"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x100

    .line 1
    invoke-direct {p0, v0}, LZj/k$I;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 2
    new-instance v0, LBi/j;

    invoke-direct {v0}, LBi/j;-><init>()V

    const-string v1, "DSTU7624"

    invoke-direct {p0, v1, p1, v0}, Lak/d;-><init>(Ljava/lang/String;ILBi/j;)V

    return-void
.end method
