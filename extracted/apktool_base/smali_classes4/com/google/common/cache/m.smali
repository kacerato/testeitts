.class public final Lcom/google/common/cache/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/common/cache/g;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/cache/m$c;
    }
.end annotation

.annotation build Lv2/b;
    emulated = true
.end annotation


# static fields
.field public static final a:Lw2/Q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/Q<",
            "Lcom/google/common/cache/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    new-instance v0, Lcom/google/common/cache/n;

    invoke-direct {v0}, Lcom/google/common/cache/n;-><init>()V

    new-instance v0, Lcom/google/common/cache/m$a;

    invoke-direct {v0}, Lcom/google/common/cache/m$a;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    new-instance v0, Lcom/google/common/cache/m$b;

    invoke-direct {v0}, Lcom/google/common/cache/m$b;-><init>()V

    :goto_0
    sput-object v0, Lcom/google/common/cache/m;->a:Lw2/Q;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/common/cache/l;
    .locals 1

    sget-object v0, Lcom/google/common/cache/m;->a:Lw2/Q;

    invoke-interface {v0}, Lw2/Q;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/l;

    return-object v0
.end method
