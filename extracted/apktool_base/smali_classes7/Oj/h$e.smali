.class public LOj/h$e;
.super LOj/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOj/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x6f

    const-string v2, "X448"

    invoke-direct {p0, v2, v0, v1}, LOj/h;-><init>(Ljava/lang/String;ZI)V

    return-void
.end method
