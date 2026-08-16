.class public final Lcom/google/android/gms/internal/measurement/I0;
.super LI0/a;
.source "SourceFile"


# annotations
.annotation build LI0/c$a;
    creator = "InitializationParamsCreator"
.end annotation

.annotation build LI0/c$g;
    value = {
        0x4,
        0x5,
        0x6
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/measurement/I0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:J
    .annotation build LI0/c$c;
        id = 0x1
    .end annotation
.end field

.field public final c:J
    .annotation build LI0/c$c;
        id = 0x2
    .end annotation
.end field

.field public final d:Z
    .annotation build LI0/c$c;
        id = 0x3
    .end annotation
.end field

.field public final e:Landroid/os/Bundle;
    .annotation build LI0/c$c;
        id = 0x7
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final f:Ljava/lang/String;
    .annotation build LI0/c$c;
        id = 0x8
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/J0;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/J0;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/I0;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJZLandroid/os/Bundle;Ljava/lang/String;)V
    .locals 0
    .param p1    # J
        .annotation build LI0/c$e;
            id = 0x1
        .end annotation
    .end param
    .param p3    # J
        .annotation build LI0/c$e;
            id = 0x2
        .end annotation
    .end param
    .param p5    # Z
        .annotation build LI0/c$e;
            id = 0x3
        .end annotation
    .end param
    .param p6    # Landroid/os/Bundle;
        .annotation build LI0/c$e;
            id = 0x7
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build LI0/c$e;
            id = 0x8
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build LI0/c$b;
    .end annotation

    invoke-direct {p0}, LI0/a;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/I0;->b:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/measurement/I0;->c:J

    iput-boolean p5, p0, Lcom/google/android/gms/internal/measurement/I0;->d:Z

    iput-object p6, p0, Lcom/google/android/gms/internal/measurement/I0;->e:Landroid/os/Bundle;

    iput-object p7, p0, Lcom/google/android/gms/internal/measurement/I0;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/I0;->b:J

    invoke-static {p1}, LI0/b;->a(Landroid/os/Parcel;)I

    move-result p2

    const/4 v2, 0x1

    invoke-static {p1, v2, v0, v1}, LI0/b;->K(Landroid/os/Parcel;IJ)V

    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/google/android/gms/internal/measurement/I0;->c:J

    invoke-static {p1, v0, v1, v2}, LI0/b;->K(Landroid/os/Parcel;IJ)V

    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/I0;->d:Z

    invoke-static {p1, v0, v1}, LI0/b;->g(Landroid/os/Parcel;IZ)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/I0;->e:Landroid/os/Bundle;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, LI0/b;->k(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/I0;->f:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, LI0/b;->Y(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-static {p1, p2}, LI0/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
