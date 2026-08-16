.class public final Lcom/google/common/util/concurrent/n0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/common/util/concurrent/A;
.end annotation

.annotation build Lv2/a;
.end annotation

.annotation build Lv2/b;
.end annotation


# static fields
.field public static final a:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/util/concurrent/n0$a;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/n0$a;-><init>()V

    sput-object v0, Lcom/google/common/util/concurrent/n0;->a:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/Runnable;
    .locals 1

    sget-object v0, Lcom/google/common/util/concurrent/n0;->a:Ljava/lang/Runnable;

    return-object v0
.end method
