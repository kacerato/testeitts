.class public final LB0/T;
.super LI0/a;
.source "SourceFile"


# annotations
.annotation build LI0/c$a;
    creator = "GoogleCertificatesLookupResponseCreator"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "LB0/T;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Z
    .annotation build LI0/c$c;
        getter = "getResult"
        id = 0x1
    .end annotation
.end field

.field public final c:Ljava/lang/String;
    .annotation build LI0/c$c;
        getter = "getErrorMessage"
        id = 0x2
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final d:I
    .annotation build LI0/c$c;
        getter = "getStatusValue"
        id = 0x3
    .end annotation
.end field

.field public final e:I
    .annotation build LI0/c$c;
        getter = "getFirstPartyStatusValue"
        id = 0x4
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LB0/U;

    invoke-direct {v0}, LB0/U;-><init>()V

    sput-object v0, LB0/T;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;II)V
    .locals 0
    .param p1    # Z
        .annotation build LI0/c$e;
            id = 0x1
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build LI0/c$e;
            id = 0x2
        .end annotation
    .end param
    .param p3    # I
        .annotation build LI0/c$e;
            id = 0x3
        .end annotation
    .end param
    .param p4    # I
        .annotation build LI0/c$e;
            id = 0x4
        .end annotation
    .end param
    .annotation build LI0/c$b;
    .end annotation

    invoke-direct {p0}, LI0/a;-><init>()V

    iput-boolean p1, p0, LB0/T;->b:Z

    iput-object p2, p0, LB0/T;->c:Ljava/lang/String;

    invoke-static {p3}, LB0/a0;->a(I)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, LB0/T;->d:I

    invoke-static {p4}, LB0/F;->a(I)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, LB0/T;->e:I

    return-void
.end method


# virtual methods
.method public final b0()I
    .locals 1

    iget v0, p0, LB0/T;->e:I

    invoke-static {v0}, LB0/F;->a(I)I

    move-result v0

    return v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, LB0/T;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final n0()I
    .locals 1

    iget v0, p0, LB0/T;->d:I

    invoke-static {v0}, LB0/a0;->a(I)I

    move-result v0

    return v0
.end method

.method public final t()Z
    .locals 1

    iget-boolean v0, p0, LB0/T;->b:Z

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, LI0/b;->a(Landroid/os/Parcel;)I

    move-result p2

    const/4 v0, 0x1

    iget-boolean v1, p0, LB0/T;->b:Z

    invoke-static {p1, v0, v1}, LI0/b;->g(Landroid/os/Parcel;IZ)V

    iget-object v0, p0, LB0/T;->c:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v2, v0, v1}, LI0/b;->Y(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x3

    iget v1, p0, LB0/T;->d:I

    invoke-static {p1, v0, v1}, LI0/b;->F(Landroid/os/Parcel;II)V

    const/4 v0, 0x4

    iget v1, p0, LB0/T;->e:I

    invoke-static {p1, v0, v1}, LI0/b;->F(Landroid/os/Parcel;II)V

    invoke-static {p1, p2}, LI0/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
