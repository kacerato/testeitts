.class public Lo4/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo4/d$a;
    }
.end annotation


# static fields
.field public static final d:F = -4.6848467E8f

.field public static final e:F = -4.8648486E8f


# instance fields
.field public a:F

.field public b:F

.field public c:Lo4/d$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x32209bee

    iput v0, p0, Lo4/d;->a:F

    iput v0, p0, Lo4/d;->b:F

    sget-object v0, Lo4/d$a;->Global:Lo4/d$a;

    iput-object v0, p0, Lo4/d;->c:Lo4/d$a;

    return-void
.end method
