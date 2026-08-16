.class public final LB0/Q;
.super LI0/a;
.source "SourceFile"


# annotations
.annotation build LI0/c$a;
    creator = "GoogleCertificatesLookupQueryCreator"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "LB0/Q;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ljava/lang/String;
    .annotation build LI0/c$c;
        getter = "getCallingPackage"
        id = 0x1
    .end annotation
.end field

.field public final c:Z
    .annotation build LI0/c$c;
        getter = "getAllowTestKeys"
        id = 0x2
    .end annotation
.end field

.field public final d:Z
    .annotation build LI0/c$c;
        defaultValue = "false"
        getter = "getIgnoreTestKeysOverride"
        id = 0x3
    .end annotation
.end field

.field public final e:Landroid/content/Context;
    .annotation build LI0/c$c;
        getter = "getCallingContextBinder"
        id = 0x4
        type = "android.os.IBinder"
    .end annotation
.end field

.field public final f:Z
    .annotation build LI0/c$c;
        getter = "getIsChimeraPackage"
        id = 0x5
    .end annotation
.end field

.field public final g:Z
    .annotation build LI0/c$c;
        getter = "getIncludeHashesInErrorMessage"
        id = 0x6
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LB0/S;

    invoke-direct {v0}, LB0/S;-><init>()V

    sput-object v0, LB0/Q;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZLandroid/os/IBinder;ZZ)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build LI0/c$e;
            id = 0x1
        .end annotation
    .end param
    .param p2    # Z
        .annotation build LI0/c$e;
            id = 0x2
        .end annotation
    .end param
    .param p3    # Z
        .annotation build LI0/c$e;
            id = 0x3
        .end annotation
    .end param
    .param p4    # Landroid/os/IBinder;
        .annotation build LI0/c$e;
            id = 0x4
        .end annotation
    .end param
    .param p5    # Z
        .annotation build LI0/c$e;
            id = 0x5
        .end annotation
    .end param
    .param p6    # Z
        .annotation build LI0/c$e;
            id = 0x6
        .end annotation
    .end param
    .annotation build LI0/c$b;
    .end annotation

    invoke-direct {p0}, LI0/a;-><init>()V

    iput-object p1, p0, LB0/Q;->b:Ljava/lang/String;

    iput-boolean p2, p0, LB0/Q;->c:Z

    iput-boolean p3, p0, LB0/Q;->d:Z

    invoke-static {p4}, LW0/d$a;->k(Landroid/os/IBinder;)LW0/d;

    move-result-object p1

    invoke-static {p1}, LW0/f;->t(LW0/d;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, LB0/Q;->e:Landroid/content/Context;

    iput-boolean p5, p0, LB0/Q;->f:Z

    iput-boolean p6, p0, LB0/Q;->g:Z

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget-object p2, p0, LB0/Q;->b:Ljava/lang/String;

    invoke-static {p1}, LI0/b;->a(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v1, p2, v2}, LI0/b;->Y(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 p2, 0x2

    iget-boolean v1, p0, LB0/Q;->c:Z

    invoke-static {p1, p2, v1}, LI0/b;->g(Landroid/os/Parcel;IZ)V

    const/4 p2, 0x3

    iget-boolean v1, p0, LB0/Q;->d:Z

    invoke-static {p1, p2, v1}, LI0/b;->g(Landroid/os/Parcel;IZ)V

    iget-object p2, p0, LB0/Q;->e:Landroid/content/Context;

    invoke-static {p2}, LW0/f;->l0(Ljava/lang/Object;)LW0/d;

    move-result-object p2

    const/4 v1, 0x4

    invoke-static {p1, v1, p2, v2}, LI0/b;->B(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 p2, 0x5

    iget-boolean v1, p0, LB0/Q;->f:Z

    invoke-static {p1, p2, v1}, LI0/b;->g(Landroid/os/Parcel;IZ)V

    const/4 p2, 0x6

    iget-boolean v1, p0, LB0/Q;->g:Z

    invoke-static {p1, p2, v1}, LI0/b;->g(Landroid/os/Parcel;IZ)V

    invoke-static {p1, v0}, LI0/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
