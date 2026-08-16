.class public final Lcom/google/android/gms/measurement/internal/i;
.super LI0/a;
.source "SourceFile"


# annotations
.annotation build LI0/c$a;
    creator = "ConditionalUserPropertyParcelCreator"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/measurement/internal/i;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public b:Ljava/lang/String;
    .annotation build LI0/c$c;
        id = 0x2
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public c:Ljava/lang/String;
    .annotation build LI0/c$c;
        id = 0x3
    .end annotation
.end field

.field public d:Lcom/google/android/gms/measurement/internal/i7;
    .annotation build LI0/c$c;
        id = 0x4
    .end annotation
.end field

.field public e:J
    .annotation build LI0/c$c;
        id = 0x5
    .end annotation
.end field

.field public f:Z
    .annotation build LI0/c$c;
        id = 0x6
    .end annotation
.end field

.field public g:Ljava/lang/String;
    .annotation build LI0/c$c;
        id = 0x7
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final h:Lcom/google/android/gms/measurement/internal/I;
    .annotation build LI0/c$c;
        id = 0x8
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public i:J
    .annotation build LI0/c$c;
        id = 0x9
    .end annotation
.end field

.field public j:Lcom/google/android/gms/measurement/internal/I;
    .annotation build LI0/c$c;
        id = 0xa
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final k:J
    .annotation build LI0/c$c;
        id = 0xb
    .end annotation
.end field

.field public final l:Lcom/google/android/gms/measurement/internal/I;
    .annotation build LI0/c$c;
        id = 0xc
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/measurement/internal/j;

    invoke-direct {v0}, Lcom/google/android/gms/measurement/internal/j;-><init>()V

    sput-object v0, Lcom/google/android/gms/measurement/internal/i;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/measurement/internal/i;)V
    .locals 2

    .line 1
    invoke-direct {p0}, LI0/a;-><init>()V

    .line 2
    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/i;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/i;->b:Ljava/lang/String;

    .line 4
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/i;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/i;->c:Ljava/lang/String;

    .line 5
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/i;->d:Lcom/google/android/gms/measurement/internal/i7;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/i;->d:Lcom/google/android/gms/measurement/internal/i7;

    .line 6
    iget-wide v0, p1, Lcom/google/android/gms/measurement/internal/i;->e:J

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/i;->e:J

    .line 7
    iget-boolean v0, p1, Lcom/google/android/gms/measurement/internal/i;->f:Z

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/i;->f:Z

    .line 8
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/i;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/i;->g:Ljava/lang/String;

    .line 9
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/i;->h:Lcom/google/android/gms/measurement/internal/I;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/i;->h:Lcom/google/android/gms/measurement/internal/I;

    .line 10
    iget-wide v0, p1, Lcom/google/android/gms/measurement/internal/i;->i:J

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/i;->i:J

    .line 11
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/i;->j:Lcom/google/android/gms/measurement/internal/I;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/i;->j:Lcom/google/android/gms/measurement/internal/I;

    .line 12
    iget-wide v0, p1, Lcom/google/android/gms/measurement/internal/i;->k:J

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/i;->k:J

    .line 13
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/i;->l:Lcom/google/android/gms/measurement/internal/I;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/i;->l:Lcom/google/android/gms/measurement/internal/I;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/i7;JZLjava/lang/String;Lcom/google/android/gms/measurement/internal/I;JLcom/google/android/gms/measurement/internal/I;JLcom/google/android/gms/measurement/internal/I;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build LI0/c$e;
            id = 0x2
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build LI0/c$e;
            id = 0x3
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/measurement/internal/i7;
        .annotation build LI0/c$e;
            id = 0x4
        .end annotation
    .end param
    .param p4    # J
        .annotation build LI0/c$e;
            id = 0x5
        .end annotation
    .end param
    .param p6    # Z
        .annotation build LI0/c$e;
            id = 0x6
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build LI0/c$e;
            id = 0x7
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Lcom/google/android/gms/measurement/internal/I;
        .annotation build LI0/c$e;
            id = 0x8
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # J
        .annotation build LI0/c$e;
            id = 0x9
        .end annotation
    .end param
    .param p11    # Lcom/google/android/gms/measurement/internal/I;
        .annotation build LI0/c$e;
            id = 0xa
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p12    # J
        .annotation build LI0/c$e;
            id = 0xb
        .end annotation
    .end param
    .param p14    # Lcom/google/android/gms/measurement/internal/I;
        .annotation build LI0/c$e;
            id = 0xc
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build LI0/c$b;
    .end annotation

    .line 14
    invoke-direct {p0}, LI0/a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/i;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/i;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/i;->d:Lcom/google/android/gms/measurement/internal/i7;

    iput-wide p4, p0, Lcom/google/android/gms/measurement/internal/i;->e:J

    iput-boolean p6, p0, Lcom/google/android/gms/measurement/internal/i;->f:Z

    iput-object p7, p0, Lcom/google/android/gms/measurement/internal/i;->g:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/measurement/internal/i;->h:Lcom/google/android/gms/measurement/internal/I;

    iput-wide p9, p0, Lcom/google/android/gms/measurement/internal/i;->i:J

    iput-object p11, p0, Lcom/google/android/gms/measurement/internal/i;->j:Lcom/google/android/gms/measurement/internal/I;

    iput-wide p12, p0, Lcom/google/android/gms/measurement/internal/i;->k:J

    iput-object p14, p0, Lcom/google/android/gms/measurement/internal/i;->l:Lcom/google/android/gms/measurement/internal/I;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    invoke-static {p1}, LI0/b;->a(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/i;->b:Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, LI0/b;->Y(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/i;->c:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, LI0/b;->Y(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/i;->d:Lcom/google/android/gms/measurement/internal/i7;

    invoke-static {p1, v1, v2, p2, v3}, LI0/b;->S(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x5

    iget-wide v4, p0, Lcom/google/android/gms/measurement/internal/i;->e:J

    invoke-static {p1, v1, v4, v5}, LI0/b;->K(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/i;->f:Z

    invoke-static {p1, v1, v2}, LI0/b;->g(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/i;->g:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, LI0/b;->Y(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/i;->h:Lcom/google/android/gms/measurement/internal/I;

    invoke-static {p1, v1, v2, p2, v3}, LI0/b;->S(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x9

    iget-wide v4, p0, Lcom/google/android/gms/measurement/internal/i;->i:J

    invoke-static {p1, v1, v4, v5}, LI0/b;->K(Landroid/os/Parcel;IJ)V

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/i;->j:Lcom/google/android/gms/measurement/internal/I;

    invoke-static {p1, v1, v2, p2, v3}, LI0/b;->S(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0xb

    iget-wide v4, p0, Lcom/google/android/gms/measurement/internal/i;->k:J

    invoke-static {p1, v1, v4, v5}, LI0/b;->K(Landroid/os/Parcel;IJ)V

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/i;->l:Lcom/google/android/gms/measurement/internal/I;

    invoke-static {p1, v1, v2, p2, v3}, LI0/b;->S(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, LI0/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
