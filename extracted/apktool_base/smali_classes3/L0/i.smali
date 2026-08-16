.class public LL0/i;
.super LI0/a;
.source "SourceFile"


# annotations
.annotation build LI0/c$a;
    creator = "ModuleInstallStatusUpdateCreator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LL0/i$b;,
        LL0/i$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "LL0/i;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:I
    .annotation build LI0/c$c;
        getter = "getSessionId"
        id = 0x1
    .end annotation
.end field

.field public final c:I
    .annotation build LI0/c$c;
        getter = "getInstallState"
        id = 0x2
    .end annotation

    .annotation build LL0/i$a;
    .end annotation
.end field

.field public final d:Ljava/lang/Long;
    .annotation build LI0/c$c;
        getter = "getBytesDownloaded"
        id = 0x3
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final e:Ljava/lang/Long;
    .annotation build LI0/c$c;
        getter = "getTotalBytesToDownload"
        id = 0x4
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final f:I
    .annotation build LI0/c$c;
        getter = "getErrorCode"
        id = 0x5
    .end annotation
.end field

.field public final g:LL0/i$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LL0/n;

    invoke-direct {v0}, LL0/n;-><init>()V

    sput-object v0, LL0/i;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/lang/Long;Ljava/lang/Long;I)V
    .locals 2
    .param p1    # I
        .annotation build LI0/c$e;
            id = 0x1
        .end annotation
    .end param
    .param p2    # I
        .annotation build LI0/c$e;
            id = 0x2
        .end annotation

        .annotation build LL0/i$a;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Long;
        .annotation build LI0/c$e;
            id = 0x3
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Long;
        .annotation build LI0/c$e;
            id = 0x4
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # I
        .annotation build LI0/c$e;
            id = 0x5
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    .annotation build LI0/c$b;
    .end annotation

    invoke-direct {p0}, LI0/a;-><init>()V

    iput p1, p0, LL0/i;->b:I

    iput p2, p0, LL0/i;->c:I

    iput-object p3, p0, LL0/i;->d:Ljava/lang/Long;

    iput-object p4, p0, LL0/i;->e:Ljava/lang/Long;

    iput p5, p0, LL0/i;->f:I

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    new-instance p1, LL0/i$b;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide p4

    invoke-direct {p1, p2, p3, p4, p5}, LL0/i$b;-><init>(JJ)V

    :goto_0
    iput-object p1, p0, LL0/i;->g:LL0/i$b;

    return-void

    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public b0()LL0/i$b;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, LL0/i;->g:LL0/i$b;

    return-object v0
.end method

.method public n()I
    .locals 1

    iget v0, p0, LL0/i;->f:I

    return v0
.end method

.method public n0()I
    .locals 1

    iget v0, p0, LL0/i;->b:I

    return v0
.end method

.method public t()I
    .locals 1
    .annotation build LL0/i$a;
    .end annotation

    iget v0, p0, LL0/i;->c:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, LI0/b;->a(Landroid/os/Parcel;)I

    move-result p2

    const/4 v0, 0x1

    invoke-virtual {p0}, LL0/i;->n0()I

    move-result v1

    invoke-static {p1, v0, v1}, LI0/b;->F(Landroid/os/Parcel;II)V

    const/4 v0, 0x2

    invoke-virtual {p0}, LL0/i;->t()I

    move-result v1

    invoke-static {p1, v0, v1}, LI0/b;->F(Landroid/os/Parcel;II)V

    iget-object v0, p0, LL0/i;->d:Ljava/lang/Long;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, LI0/b;->N(Landroid/os/Parcel;ILjava/lang/Long;Z)V

    const/4 v0, 0x4

    iget-object v1, p0, LL0/i;->e:Ljava/lang/Long;

    invoke-static {p1, v0, v1, v2}, LI0/b;->N(Landroid/os/Parcel;ILjava/lang/Long;Z)V

    const/4 v0, 0x5

    invoke-virtual {p0}, LL0/i;->n()I

    move-result v1

    invoke-static {p1, v0, v1}, LI0/b;->F(Landroid/os/Parcel;II)V

    invoke-static {p1, p2}, LI0/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
