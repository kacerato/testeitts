.class public LZj/b$b;
.super Lak/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LZj/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, LBi/j;

    invoke-direct {v0}, LBi/j;-><init>()V

    const-string v1, "RC4"

    const/16 v2, 0x80

    invoke-direct {p0, v1, v2, v0}, Lak/d;-><init>(Ljava/lang/String;ILBi/j;)V

    return-void
.end method
