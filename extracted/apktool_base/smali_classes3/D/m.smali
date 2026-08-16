.class public final LD/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LD/m$b;,
        LD/m$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LD/e<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:LD/m$b;


# direct methods
.method public constructor <init>(Landroid/os/ParcelFileDescriptor;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LD/m$b;

    invoke-direct {v0, p1}, LD/m$b;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iput-object v0, p0, LD/m;->a:LD/m$b;

    return-void
.end method

.method public static b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, LD/m;->c()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public c()Landroid/os/ParcelFileDescriptor;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LD/m;->a:LD/m$b;

    invoke-virtual {v0}, LD/m$b;->a()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public cleanup()V
    .locals 0

    return-void
.end method
