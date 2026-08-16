.class public LZj/a$p;
.super Lak/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LZj/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "p"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "AES"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lak/e;-><init>(Ljava/lang/String;Loh/x;)V

    return-void
.end method
