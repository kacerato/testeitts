.class public LZj/C$c;
.super LZj/C$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LZj/C;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "SCRYPT"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, LZj/C$a;-><init>(Ljava/lang/String;I)V

    return-void
.end method
