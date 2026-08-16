.class public final LG0/m0;
.super LI0/a;
.source "SourceFile"


# annotations
.annotation build LI0/c$a;
    creator = "ResolveAccountResponseCreator"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "LG0/m0;",
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

.field public final c:Landroid/os/IBinder;
    .annotation build LI0/c$c;
        id = 0x2
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final d:LB0/c;
    .annotation build LI0/c$c;
        getter = "getConnectionResult"
        id = 0x3
    .end annotation
.end field

.field public final e:Z
    .annotation build LI0/c$c;
        getter = "getSaveDefaultAccount"
        id = 0x4
    .end annotation
.end field

.field public final f:Z
    .annotation build LI0/c$c;
        getter = "isFromCrossClientAuth"
        id = 0x5
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LG0/n0;

    invoke-direct {v0}, LG0/n0;-><init>()V

    sput-object v0, LG0/m0;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/os/IBinder;LB0/c;ZZ)V
    .locals 0
    .param p1    # I
        .annotation build LI0/c$e;
            id = 0x1
        .end annotation
    .end param
    .param p2    # Landroid/os/IBinder;
        .annotation build LI0/c$e;
            id = 0x2
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # LB0/c;
        .annotation build LI0/c$e;
            id = 0x3
        .end annotation
    .end param
    .param p4    # Z
        .annotation build LI0/c$e;
            id = 0x4
        .end annotation
    .end param
    .param p5    # Z
        .annotation build LI0/c$e;
            id = 0x5
        .end annotation
    .end param
    .annotation build LI0/c$b;
    .end annotation

    invoke-direct {p0}, LI0/a;-><init>()V

    iput p1, p0, LG0/m0;->b:I

    iput-object p2, p0, LG0/m0;->c:Landroid/os/IBinder;

    iput-object p3, p0, LG0/m0;->d:LB0/c;

    iput-boolean p4, p0, LG0/m0;->e:Z

    iput-boolean p5, p0, LG0/m0;->f:Z

    return-void
.end method


# virtual methods
.method public final b0()Z
    .locals 1

    iget-boolean v0, p0, LG0/m0;->e:Z

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, LG0/m0;

    if-nez v2, :cond_2

    return v0

    :cond_2
    check-cast p1, LG0/m0;

    iget-object v2, p0, LG0/m0;->d:LB0/c;

    iget-object v3, p1, LG0/m0;->d:LB0/c;

    invoke-virtual {v2, v3}, LB0/c;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, LG0/m0;->t()LG0/r;

    move-result-object v2

    invoke-virtual {p1}, LG0/m0;->t()LG0/r;

    move-result-object p1

    invoke-static {v2, p1}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public final n()LB0/c;
    .locals 1

    iget-object v0, p0, LG0/m0;->d:LB0/c;

    return-object v0
.end method

.method public final n0()Z
    .locals 1

    iget-boolean v0, p0, LG0/m0;->f:Z

    return v0
.end method

.method public final t()LG0/r;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, LG0/m0;->c:Landroid/os/IBinder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v0}, LG0/r$a;->k(Landroid/os/IBinder;)LG0/r;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, LI0/b;->a(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, LG0/m0;->b:I

    invoke-static {p1, v1, v2}, LI0/b;->F(Landroid/os/Parcel;II)V

    iget-object v1, p0, LG0/m0;->c:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, LI0/b;->B(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v1, 0x3

    iget-object v2, p0, LG0/m0;->d:LB0/c;

    invoke-static {p1, v1, v2, p2, v3}, LI0/b;->S(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 p2, 0x4

    iget-boolean v1, p0, LG0/m0;->e:Z

    invoke-static {p1, p2, v1}, LI0/b;->g(Landroid/os/Parcel;IZ)V

    const/4 p2, 0x5

    iget-boolean v1, p0, LG0/m0;->f:Z

    invoke-static {p1, p2, v1}, LI0/b;->g(Landroid/os/Parcel;IZ)V

    invoke-static {p1, v0}, LI0/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
