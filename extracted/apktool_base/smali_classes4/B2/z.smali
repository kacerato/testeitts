.class public final LB2/z;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LB2/k;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LB2/z$c;
    }
.end annotation


# static fields
.field public static final a:Lw2/Q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/Q<",
            "LB2/y;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    new-instance v0, LB2/A;

    invoke-direct {v0}, LB2/A;-><init>()V

    new-instance v0, LB2/z$a;

    invoke-direct {v0}, LB2/z$a;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    new-instance v0, LB2/z$b;

    invoke-direct {v0}, LB2/z$b;-><init>()V

    :goto_0
    sput-object v0, LB2/z;->a:Lw2/Q;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()LB2/y;
    .locals 1

    sget-object v0, LB2/z;->a:Lw2/Q;

    invoke-interface {v0}, Lw2/Q;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LB2/y;

    return-object v0
.end method
