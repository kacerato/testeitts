.class public final LP0/b;
.super LI0/a;
.source "SourceFile"


# annotations
.annotation build LI0/c$a;
    creator = "ConverterWrapperCreator"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "LP0/b;",
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

.field public final c:LP0/a;
    .annotation build LI0/c$c;
        getter = "getStringToIntConverter"
        id = 0x2
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LP0/c;

    invoke-direct {v0}, LP0/c;-><init>()V

    sput-object v0, LP0/b;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILP0/a;)V
    .locals 0
    .param p1    # I
        .annotation build LI0/c$e;
            id = 0x1
        .end annotation
    .end param
    .param p2    # LP0/a;
        .annotation build LI0/c$e;
            id = 0x2
        .end annotation
    .end param
    .annotation build LI0/c$b;
    .end annotation

    .line 1
    invoke-direct {p0}, LI0/a;-><init>()V

    iput p1, p0, LP0/b;->b:I

    iput-object p2, p0, LP0/b;->c:LP0/a;

    return-void
.end method

.method public constructor <init>(LP0/a;)V
    .locals 1

    .line 2
    invoke-direct {p0}, LI0/a;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, LP0/b;->b:I

    iput-object p1, p0, LP0/b;->c:LP0/a;

    return-void
.end method

.method public static b(Lcom/google/android/gms/common/server/response/a$b;)LP0/b;
    .locals 1

    instance-of v0, p0, LP0/a;

    if-eqz v0, :cond_0

    new-instance v0, LP0/b;

    check-cast p0, LP0/a;

    invoke-direct {v0, p0}, LP0/b;-><init>(LP0/a;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported safe parcelable field converter class."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final n()Lcom/google/android/gms/common/server/response/a$b;
    .locals 2

    iget-object v0, p0, LP0/b;->c:LP0/a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There was no converter wrapped in this ConverterWrapper."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    iget v0, p0, LP0/b;->b:I

    invoke-static {p1}, LI0/b;->a(Landroid/os/Parcel;)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {p1, v2, v0}, LI0/b;->F(Landroid/os/Parcel;II)V

    iget-object v0, p0, LP0/b;->c:LP0/a;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v3, v0, p2, v2}, LI0/b;->S(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v1}, LI0/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
