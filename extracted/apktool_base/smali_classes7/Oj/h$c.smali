.class public LOj/h$c;
.super LOj/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOj/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "EdDSA"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, LOj/h;-><init>(Ljava/lang/String;ZI)V

    return-void
.end method
