.class public final LB0/V;
.super LI0/a;
.source "SourceFile"


# annotations
.annotation build LI0/c$a;
    creator = "GoogleCertificatesQueryCreator"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "LB0/V;",
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

.field public final c:LB0/L;
    .annotation build LI0/c$c;
        getter = "getCallingCertificateBinder"
        id = 0x2
        type = "android.os.IBinder"
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final d:Z
    .annotation build LI0/c$c;
        getter = "getAllowTestKeys"
        id = 0x3
    .end annotation
.end field

.field public final e:Z
    .annotation build LI0/c$c;
        defaultValue = "false"
        getter = "getIgnoreTestKeysOverride"
        id = 0x4
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LB0/W;

    invoke-direct {v0}, LB0/W;-><init>()V

    sput-object v0, LB0/V;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;LB0/L;ZZ)V
    .locals 0
    .param p2    # LB0/L;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, LI0/a;-><init>()V

    iput-object p1, p0, LB0/V;->b:Ljava/lang/String;

    iput-object p2, p0, LB0/V;->c:LB0/L;

    iput-boolean p3, p0, LB0/V;->d:Z

    iput-boolean p4, p0, LB0/V;->e:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/IBinder;ZZ)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build LI0/c$e;
            id = 0x1
        .end annotation
    .end param
    .param p2    # Landroid/os/IBinder;
        .annotation build LI0/c$e;
            id = 0x2
        .end annotation

        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Z
        .annotation build LI0/c$e;
            id = 0x3
        .end annotation
    .end param
    .param p4    # Z
        .annotation build LI0/c$e;
            id = 0x4
        .end annotation
    .end param
    .annotation build LI0/c$b;
    .end annotation

    .line 2
    const-string v0, "Could not unwrap certificate"

    const-string v1, "GoogleCertificatesQuery"

    invoke-direct {p0}, LI0/a;-><init>()V

    iput-object p1, p0, LB0/V;->b:Ljava/lang/String;

    const/4 p1, 0x0

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-static {p2}, LG0/c1;->k(Landroid/os/IBinder;)LG0/s0;

    move-result-object p2

    invoke-interface {p2}, LG0/s0;->Q1()LW0/d;

    move-result-object p2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p2, :cond_1

    move-object p2, p1

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {p2}, LW0/f;->t(LW0/d;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    :goto_0
    if-eqz p2, :cond_2

    .line 4
    new-instance p1, LB0/M;

    .line 5
    invoke-direct {p1, p2}, LB0/M;-><init>([B)V

    goto :goto_1

    .line 6
    :cond_2
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_0
    move-exception p2

    .line 7
    invoke-static {v1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8
    :goto_1
    iput-object p1, p0, LB0/V;->c:LB0/L;

    iput-boolean p3, p0, LB0/V;->d:Z

    iput-boolean p4, p0, LB0/V;->e:Z

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget-object p2, p0, LB0/V;->b:Ljava/lang/String;

    invoke-static {p1}, LI0/b;->a(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v1, p2, v2}, LI0/b;->Y(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object p2, p0, LB0/V;->c:LB0/L;

    if-nez p2, :cond_0

    const-string p2, "GoogleCertificatesQuery"

    const-string v1, "certificate binder is null"

    invoke-static {p2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    :cond_0
    const/4 v1, 0x2

    invoke-static {p1, v1, p2, v2}, LI0/b;->B(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 p2, 0x3

    iget-boolean v1, p0, LB0/V;->d:Z

    invoke-static {p1, p2, v1}, LI0/b;->g(Landroid/os/Parcel;IZ)V

    const/4 p2, 0x4

    iget-boolean v1, p0, LB0/V;->e:Z

    invoke-static {p1, p2, v1}, LI0/b;->g(Landroid/os/Parcel;IZ)V

    invoke-static {p1, v0}, LI0/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
