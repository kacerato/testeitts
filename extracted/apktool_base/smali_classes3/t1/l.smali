.class public final Lt1/l;
.super LI0/a;
.source "SourceFile"


# annotations
.annotation build LI0/c$a;
    creator = "SignInResponseCreator"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lt1/l;",
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

.field public final c:LB0/c;
    .annotation build LI0/c$c;
        getter = "getConnectionResult"
        id = 0x2
    .end annotation
.end field

.field public final d:LG0/m0;
    .annotation build LI0/c$c;
        getter = "getResolveAccountResponse"
        id = 0x3
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lt1/m;

    invoke-direct {v0}, Lt1/m;-><init>()V

    sput-object v0, Lt1/l;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILB0/c;LG0/m0;)V
    .locals 0
    .param p1    # I
        .annotation build LI0/c$e;
            id = 0x1
        .end annotation
    .end param
    .param p2    # LB0/c;
        .annotation build LI0/c$e;
            id = 0x2
        .end annotation
    .end param
    .param p3    # LG0/m0;
        .annotation build LI0/c$e;
            id = 0x3
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build LI0/c$b;
    .end annotation

    invoke-direct {p0}, LI0/a;-><init>()V

    iput p1, p0, Lt1/l;->b:I

    iput-object p2, p0, Lt1/l;->c:LB0/c;

    iput-object p3, p0, Lt1/l;->d:LG0/m0;

    return-void
.end method


# virtual methods
.method public final n()LB0/c;
    .locals 1

    iget-object v0, p0, Lt1/l;->c:LB0/c;

    return-object v0
.end method

.method public final t()LG0/m0;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lt1/l;->d:LG0/m0;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, LI0/b;->a(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lt1/l;->b:I

    invoke-static {p1, v1, v2}, LI0/b;->F(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lt1/l;->c:LB0/c;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, LI0/b;->S(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x3

    iget-object v2, p0, Lt1/l;->d:LG0/m0;

    invoke-static {p1, v1, v2, p2, v3}, LI0/b;->S(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, LI0/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
