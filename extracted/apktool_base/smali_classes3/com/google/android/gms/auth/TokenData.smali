.class public Lcom/google/android/gms/auth/TokenData;
.super LI0/a;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# annotations
.annotation build LG0/F;
.end annotation

.annotation build LI0/c$a;
    creator = "TokenDataCreator"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/auth/TokenData;",
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

.field public final c:Ljava/lang/String;
    .annotation build LI0/c$c;
        getter = "getToken"
        id = 0x2
    .end annotation
.end field

.field public final d:Ljava/lang/Long;
    .annotation build LI0/c$c;
        getter = "getExpirationTimeSecs"
        id = 0x3
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final e:Z
    .annotation build LI0/c$c;
        getter = "isCached"
        id = 0x4
    .end annotation
.end field

.field public final f:Z
    .annotation build LI0/c$c;
        getter = "isSnowballed"
        id = 0x5
    .end annotation
.end field

.field public final g:Ljava/util/List;
    .annotation build LI0/c$c;
        getter = "getGrantedScopes"
        id = 0x6
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final h:Ljava/lang/String;
    .annotation build LI0/c$c;
        getter = "getScopeData"
        id = 0x7
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ls0/s;

    invoke-direct {v0}, Ls0/s;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/TokenData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Long;ZZLjava/util/List;Ljava/lang/String;)V
    .locals 0
    .param p1    # I
        .annotation build LI0/c$e;
            id = 0x1
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build LI0/c$e;
            id = 0x2
        .end annotation
    .end param
    .param p3    # Ljava/lang/Long;
        .annotation build LI0/c$e;
            id = 0x3
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
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
    .param p6    # Ljava/util/List;
        .annotation build LI0/c$e;
            id = 0x6
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build LI0/c$e;
            id = 0x7
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build LI0/c$b;
    .end annotation

    invoke-direct {p0}, LI0/a;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/TokenData;->b:I

    invoke-static {p2}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/auth/TokenData;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/auth/TokenData;->d:Ljava/lang/Long;

    iput-boolean p4, p0, Lcom/google/android/gms/auth/TokenData;->e:Z

    iput-boolean p5, p0, Lcom/google/android/gms/auth/TokenData;->f:Z

    iput-object p6, p0, Lcom/google/android/gms/auth/TokenData;->g:Ljava/util/List;

    iput-object p7, p0, Lcom/google/android/gms/auth/TokenData;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/google/android/gms/auth/TokenData;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/android/gms/auth/TokenData;

    iget-object v0, p0, Lcom/google/android/gms/auth/TokenData;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/auth/TokenData;->c:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/auth/TokenData;->d:Ljava/lang/Long;

    iget-object v2, p1, Lcom/google/android/gms/auth/TokenData;->d:Ljava/lang/Long;

    invoke-static {v0, v2}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/auth/TokenData;->e:Z

    iget-boolean v2, p1, Lcom/google/android/gms/auth/TokenData;->e:Z

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/auth/TokenData;->f:Z

    iget-boolean v2, p1, Lcom/google/android/gms/auth/TokenData;->f:Z

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/auth/TokenData;->g:Ljava/util/List;

    iget-object v2, p1, Lcom/google/android/gms/auth/TokenData;->g:Ljava/util/List;

    invoke-static {v0, v2}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/auth/TokenData;->h:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/auth/TokenData;->h:Ljava/lang/String;

    invoke-static {v0, p1}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/auth/TokenData;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/auth/TokenData;->d:Ljava/lang/Long;

    iget-boolean v2, p0, Lcom/google/android/gms/auth/TokenData;->e:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/gms/auth/TokenData;->f:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/auth/TokenData;->g:Ljava/util/List;

    iget-object v5, p0, Lcom/google/android/gms/auth/TokenData;->h:Ljava/lang/String;

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LG0/y;->c([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/TokenData;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, LI0/b;->a(Landroid/os/Parcel;)I

    move-result p2

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/auth/TokenData;->b:I

    invoke-static {p1, v0, v1}, LI0/b;->F(Landroid/os/Parcel;II)V

    iget-object v0, p0, Lcom/google/android/gms/auth/TokenData;->c:Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, LI0/b;->Y(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/auth/TokenData;->d:Ljava/lang/Long;

    invoke-static {p1, v0, v1, v2}, LI0/b;->N(Landroid/os/Parcel;ILjava/lang/Long;Z)V

    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/google/android/gms/auth/TokenData;->e:Z

    invoke-static {p1, v0, v1}, LI0/b;->g(Landroid/os/Parcel;IZ)V

    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/google/android/gms/auth/TokenData;->f:Z

    invoke-static {p1, v0, v1}, LI0/b;->g(Landroid/os/Parcel;IZ)V

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/gms/auth/TokenData;->g:Ljava/util/List;

    invoke-static {p1, v0, v1, v2}, LI0/b;->a0(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/gms/auth/TokenData;->h:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, LI0/b;->Y(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-static {p1, p2}, LI0/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
