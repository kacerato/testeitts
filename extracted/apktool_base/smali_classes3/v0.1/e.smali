.class public Lv0/e;
.super LI0/a;
.source "SourceFile"


# annotations
.annotation build LI0/c$a;
    creator = "DeviceMetaDataCreator"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lv0/e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:I
    .annotation build LI0/c$h;
        id = 0x1
    .end annotation
.end field

.field public final c:Z
    .annotation build LI0/c$c;
        getter = "isLockScreenSolved"
        id = 0x2
    .end annotation
.end field

.field public final d:J
    .annotation build LI0/c$c;
        getter = "getMinAgeOfLockScreen"
        id = 0x3
    .end annotation
.end field

.field public final e:Z
    .annotation build LI0/c$c;
        getter = "isChallengeAllowed"
        id = 0x4
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lv0/D;

    invoke-direct {v0}, Lv0/D;-><init>()V

    sput-object v0, Lv0/e;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IZJZ)V
    .locals 0
    .param p1    # I
        .annotation build LI0/c$e;
            id = 0x1
        .end annotation
    .end param
    .param p2    # Z
        .annotation build LI0/c$e;
            id = 0x2
        .end annotation
    .end param
    .param p3    # J
        .annotation build LI0/c$e;
            id = 0x3
        .end annotation
    .end param
    .param p5    # Z
        .annotation build LI0/c$e;
            id = 0x4
        .end annotation
    .end param
    .annotation build LI0/c$b;
    .end annotation

    invoke-direct {p0}, LI0/a;-><init>()V

    iput p1, p0, Lv0/e;->b:I

    iput-boolean p2, p0, Lv0/e;->c:Z

    iput-wide p3, p0, Lv0/e;->d:J

    iput-boolean p5, p0, Lv0/e;->e:Z

    return-void
.end method


# virtual methods
.method public b0()Z
    .locals 1

    iget-boolean v0, p0, Lv0/e;->c:Z

    return v0
.end method

.method public n()J
    .locals 2

    iget-wide v0, p0, Lv0/e;->d:J

    return-wide v0
.end method

.method public t()Z
    .locals 1

    iget-boolean v0, p0, Lv0/e;->e:Z

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, LI0/b;->a(Landroid/os/Parcel;)I

    move-result p2

    const/4 v0, 0x1

    iget v1, p0, Lv0/e;->b:I

    invoke-static {p1, v0, v1}, LI0/b;->F(Landroid/os/Parcel;II)V

    const/4 v0, 0x2

    invoke-virtual {p0}, Lv0/e;->b0()Z

    move-result v1

    invoke-static {p1, v0, v1}, LI0/b;->g(Landroid/os/Parcel;IZ)V

    const/4 v0, 0x3

    invoke-virtual {p0}, Lv0/e;->n()J

    move-result-wide v1

    invoke-static {p1, v0, v1, v2}, LI0/b;->K(Landroid/os/Parcel;IJ)V

    const/4 v0, 0x4

    invoke-virtual {p0}, Lv0/e;->t()Z

    move-result v1

    invoke-static {p1, v0, v1}, LI0/b;->g(Landroid/os/Parcel;IZ)V

    invoke-static {p1, p2}, LI0/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
