.class public Ls0/b;
.super LI0/a;
.source "SourceFile"


# annotations
.annotation build LI0/c$a;
    creator = "AccountChangeEventsRequestCreator"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ls0/b;",
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

.field public c:I
    .annotation build LI0/c$c;
        id = 0x2
    .end annotation
.end field

.field public d:Ljava/lang/String;
    .annotation build LI0/c$c;
        id = 0x3
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public e:Landroid/accounts/Account;
    .annotation build LI0/c$c;
        id = 0x4
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ls0/h;

    invoke-direct {v0}, Ls0/h;-><init>()V

    sput-object v0, Ls0/b;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LI0/a;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Ls0/b;->b:I

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Landroid/accounts/Account;)V
    .locals 0
    .param p1    # I
        .annotation build LI0/c$e;
            id = 0x1
        .end annotation
    .end param
    .param p2    # I
        .annotation build LI0/c$e;
            id = 0x2
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build LI0/c$e;
            id = 0x3
        .end annotation
    .end param
    .param p4    # Landroid/accounts/Account;
        .annotation build LI0/c$e;
            id = 0x4
        .end annotation
    .end param
    .annotation build LI0/c$b;
    .end annotation

    .line 2
    invoke-direct {p0}, LI0/a;-><init>()V

    iput p1, p0, Ls0/b;->b:I

    iput p2, p0, Ls0/b;->c:I

    iput-object p3, p0, Ls0/b;->d:Ljava/lang/String;

    if-nez p4, :cond_0

    .line 3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Landroid/accounts/Account;

    .line 4
    const-string p2, "com.google"

    invoke-direct {p1, p3, p2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Ls0/b;->e:Landroid/accounts/Account;

    return-void

    :cond_0
    iput-object p4, p0, Ls0/b;->e:Landroid/accounts/Account;

    return-void
.end method


# virtual methods
.method public b0(Landroid/accounts/Account;)Ls0/b;
    .locals 0
    .param p1    # Landroid/accounts/Account;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Ls0/b;->e:Landroid/accounts/Account;

    return-object p0
.end method

.method public h()Landroid/accounts/Account;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Ls0/b;->e:Landroid/accounts/Account;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Ls0/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public n0(Ljava/lang/String;)Ls0/b;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Ls0/b;->d:Ljava/lang/String;

    return-object p0
.end method

.method public t()I
    .locals 1

    iget v0, p0, Ls0/b;->c:I

    return v0
.end method

.method public u0(I)Ls0/b;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Ls0/b;->c:I

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, LI0/b;->a(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Ls0/b;->b:I

    invoke-static {p1, v1, v2}, LI0/b;->F(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    iget v2, p0, Ls0/b;->c:I

    invoke-static {p1, v1, v2}, LI0/b;->F(Landroid/os/Parcel;II)V

    iget-object v1, p0, Ls0/b;->d:Ljava/lang/String;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, LI0/b;->Y(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x4

    iget-object v2, p0, Ls0/b;->e:Landroid/accounts/Account;

    invoke-static {p1, v1, v2, p2, v3}, LI0/b;->S(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, LI0/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
