.class public LUj/e$j;
.super Lak/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LUj/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, LBi/j;

    invoke-direct {v0}, LBi/j;-><init>()V

    const-string v1, "HMACDSTU7564-512"

    const/16 v2, 0x200

    invoke-direct {p0, v1, v2, v0}, Lak/d;-><init>(Ljava/lang/String;ILBi/j;)V

    return-void
.end method
