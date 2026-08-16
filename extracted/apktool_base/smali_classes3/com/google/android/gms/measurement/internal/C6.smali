.class public final Lcom/google/android/gms/measurement/internal/C6;
.super LI0/a;
.source "SourceFile"


# annotations
.annotation build LI0/c$a;
    creator = "TriggerUriParcelCreator"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/measurement/internal/C6;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ljava/lang/String;
    .annotation build LI0/c$c;
        id = 0x1
    .end annotation
.end field

.field public final c:J
    .annotation build LI0/c$c;
        id = 0x2
    .end annotation
.end field

.field public final d:I
    .annotation build LI0/c$c;
        id = 0x3
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/measurement/internal/D6;

    invoke-direct {v0}, Lcom/google/android/gms/measurement/internal/D6;-><init>()V

    sput-object v0, Lcom/google/android/gms/measurement/internal/C6;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JI)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build LI0/c$e;
            id = 0x1
        .end annotation
    .end param
    .param p2    # J
        .annotation build LI0/c$e;
            id = 0x2
        .end annotation
    .end param
    .param p4    # I
        .annotation build LI0/c$e;
            id = 0x3
        .end annotation
    .end param
    .annotation build LI0/c$b;
    .end annotation

    invoke-direct {p0}, LI0/a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/C6;->b:Ljava/lang/String;

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/C6;->c:J

    iput p4, p0, Lcom/google/android/gms/measurement/internal/C6;->d:I

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/C6;->b:Ljava/lang/String;

    invoke-static {p1}, LI0/b;->a(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v1, p2, v2}, LI0/b;->Y(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 p2, 0x2

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/C6;->c:J

    invoke-static {p1, p2, v1, v2}, LI0/b;->K(Landroid/os/Parcel;IJ)V

    const/4 p2, 0x3

    iget v1, p0, Lcom/google/android/gms/measurement/internal/C6;->d:I

    invoke-static {p1, p2, v1}, LI0/b;->F(Landroid/os/Parcel;II)V

    invoke-static {p1, v0}, LI0/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
