.class public LX1/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Z)V
    .locals 0

    sput-boolean p0, LX1/e;->a:Z

    return-void
.end method

.method public static b()Z
    .locals 1

    sget-boolean v0, LX1/e;->a:Z

    return v0
.end method
