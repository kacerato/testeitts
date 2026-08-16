.class public final Lcom/google/android/gms/measurement/internal/H6;
.super LI0/a;
.source "SourceFile"


# annotations
.annotation build LI0/c$a;
    creator = "UploadBatchParcelCreator"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/measurement/internal/H6;",
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

.field public c:[B
    .annotation build LI0/c$c;
        id = 0x2
    .end annotation
.end field

.field public final d:Ljava/lang/String;
    .annotation build LI0/c$c;
        id = 0x3
    .end annotation
.end field

.field public final e:Landroid/os/Bundle;
    .annotation build LI0/c$c;
        id = 0x4
    .end annotation
.end field

.field public final f:I
    .annotation build LI0/c$c;
        id = 0x5
    .end annotation
.end field

.field public final g:J
    .annotation build LI0/c$c;
        id = 0x6
    .end annotation
.end field

.field public h:Ljava/lang/String;
    .annotation build LI0/c$c;
        id = 0x7
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/measurement/internal/I6;

    invoke-direct {v0}, Lcom/google/android/gms/measurement/internal/I6;-><init>()V

    sput-object v0, Lcom/google/android/gms/measurement/internal/H6;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(J[BLjava/lang/String;Landroid/os/Bundle;IJLjava/lang/String;)V
    .locals 0
    .param p1    # J
        .annotation build LI0/c$e;
            id = 0x1
        .end annotation
    .end param
    .param p3    # [B
        .annotation build LI0/c$e;
            id = 0x2
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build LI0/c$e;
            id = 0x3
        .end annotation
    .end param
    .param p5    # Landroid/os/Bundle;
        .annotation build LI0/c$e;
            id = 0x4
        .end annotation
    .end param
    .param p6    # I
        .annotation build LI0/c$e;
            id = 0x5
        .end annotation
    .end param
    .param p7    # J
        .annotation build LI0/c$e;
            id = 0x6
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build LI0/c$e;
            id = 0x7
        .end annotation
    .end param
    .annotation build LI0/c$b;
    .end annotation

    invoke-direct {p0}, LI0/a;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/H6;->b:J

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/H6;->c:[B

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/H6;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/H6;->e:Landroid/os/Bundle;

    iput p6, p0, Lcom/google/android/gms/measurement/internal/H6;->f:I

    iput-wide p7, p0, Lcom/google/android/gms/measurement/internal/H6;->g:J

    iput-object p9, p0, Lcom/google/android/gms/measurement/internal/H6;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/H6;->b:J

    invoke-static {p1}, LI0/b;->a(Landroid/os/Parcel;)I

    move-result p2

    const/4 v2, 0x1

    invoke-static {p1, v2, v0, v1}, LI0/b;->K(Landroid/os/Parcel;IJ)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/H6;->c:[B

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, LI0/b;->m(Landroid/os/Parcel;I[BZ)V

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/H6;->d:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, LI0/b;->Y(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/H6;->e:Landroid/os/Bundle;

    invoke-static {p1, v0, v1, v2}, LI0/b;->k(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    const/4 v0, 0x5

    iget v1, p0, Lcom/google/android/gms/measurement/internal/H6;->f:I

    invoke-static {p1, v0, v1}, LI0/b;->F(Landroid/os/Parcel;II)V

    const/4 v0, 0x6

    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/H6;->g:J

    invoke-static {p1, v0, v3, v4}, LI0/b;->K(Landroid/os/Parcel;IJ)V

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/H6;->h:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, LI0/b;->Y(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-static {p1, p2}, LI0/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
