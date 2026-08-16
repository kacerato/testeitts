.class public final Lcom/google/android/gms/measurement/internal/g;
.super LI0/a;
.source "SourceFile"


# annotations
.annotation build LI0/c$a;
    creator = "BatchUploadStatusParcelCreator"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/measurement/internal/g;",
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

.field public final c:I
    .annotation build LI0/c$c;
        id = 0x2
    .end annotation
.end field

.field public final d:J
    .annotation build LI0/c$c;
        id = 0x3
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/measurement/internal/h;

    invoke-direct {v0}, Lcom/google/android/gms/measurement/internal/h;-><init>()V

    sput-object v0, Lcom/google/android/gms/measurement/internal/g;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JIJ)V
    .locals 0
    .param p1    # J
        .annotation build LI0/c$e;
            id = 0x1
        .end annotation
    .end param
    .param p3    # I
        .annotation build LI0/c$e;
            id = 0x2
        .end annotation
    .end param
    .param p4    # J
        .annotation build LI0/c$e;
            id = 0x3
        .end annotation
    .end param
    .annotation build LI0/c$b;
    .end annotation

    invoke-direct {p0}, LI0/a;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/g;->b:J

    iput p3, p0, Lcom/google/android/gms/measurement/internal/g;->c:I

    iput-wide p4, p0, Lcom/google/android/gms/measurement/internal/g;->d:J

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/g;->b:J

    invoke-static {p1}, LI0/b;->a(Landroid/os/Parcel;)I

    move-result p2

    const/4 v2, 0x1

    invoke-static {p1, v2, v0, v1}, LI0/b;->K(Landroid/os/Parcel;IJ)V

    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/gms/measurement/internal/g;->c:I

    invoke-static {p1, v0, v1}, LI0/b;->F(Landroid/os/Parcel;II)V

    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/g;->d:J

    invoke-static {p1, v0, v1, v2}, LI0/b;->K(Landroid/os/Parcel;IJ)V

    invoke-static {p1, p2}, LI0/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
