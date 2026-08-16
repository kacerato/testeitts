.class public final Lcom/google/android/gms/auth/api/identity/c;
.super LI0/a;
.source "SourceFile"


# annotations
.annotation build LI0/c$a;
    creator = "BeginSignInRequestCreator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/api/identity/c$a;,
        Lcom/google/android/gms/auth/api/identity/c$e;,
        Lcom/google/android/gms/auth/api/identity/c$b;,
        Lcom/google/android/gms/auth/api/identity/c$d;,
        Lcom/google/android/gms/auth/api/identity/c$c;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/auth/api/identity/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Lcom/google/android/gms/auth/api/identity/c$e;
    .annotation build LI0/c$c;
        getter = "getPasswordRequestOptions"
        id = 0x1
    .end annotation
.end field

.field public final c:Lcom/google/android/gms/auth/api/identity/c$b;
    .annotation build LI0/c$c;
        getter = "getGoogleIdTokenRequestOptions"
        id = 0x2
    .end annotation
.end field

.field public final d:Ljava/lang/String;
    .annotation build LI0/c$c;
        getter = "getSessionId"
        id = 0x3
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final e:Z
    .annotation build LI0/c$c;
        getter = "isAutoSelectEnabled"
        id = 0x4
    .end annotation
.end field

.field public final f:I
    .annotation build LI0/c$c;
        getter = "getTheme"
        id = 0x5
    .end annotation
.end field

.field public final g:Lcom/google/android/gms/auth/api/identity/c$d;
    .annotation build LI0/c$c;
        getter = "getPasskeysRequestOptions"
        id = 0x6
    .end annotation
.end field

.field public final h:Lcom/google/android/gms/auth/api/identity/c$c;
    .annotation build LI0/c$c;
        getter = "getPasskeyJsonRequestOptions"
        id = 0x7
    .end annotation
.end field

.field public final i:Z
    .annotation build LI0/c$c;
        defaultValue = "false"
        getter = "getPreferImmediatelyAvailableCredentials"
        id = 0x8
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/api/identity/v;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/identity/v;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/identity/c;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/auth/api/identity/c$e;Lcom/google/android/gms/auth/api/identity/c$b;Ljava/lang/String;ZILcom/google/android/gms/auth/api/identity/c$d;Lcom/google/android/gms/auth/api/identity/c$c;Z)V
    .locals 0
    .param p1    # Lcom/google/android/gms/auth/api/identity/c$e;
        .annotation build LI0/c$e;
            id = 0x1
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/auth/api/identity/c$b;
        .annotation build LI0/c$e;
            id = 0x2
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
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
    .param p5    # I
        .annotation build LI0/c$e;
            id = 0x5
        .end annotation
    .end param
    .param p6    # Lcom/google/android/gms/auth/api/identity/c$d;
        .annotation build LI0/c$e;
            id = 0x6
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/google/android/gms/auth/api/identity/c$c;
        .annotation build LI0/c$e;
            id = 0x7
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Z
        .annotation build LI0/c$e;
            id = 0x8
        .end annotation
    .end param
    .annotation build LI0/c$b;
    .end annotation

    invoke-direct {p0}, LI0/a;-><init>()V

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/auth/api/identity/c$e;

    iput-object p1, p0, Lcom/google/android/gms/auth/api/identity/c;->b:Lcom/google/android/gms/auth/api/identity/c$e;

    invoke-static {p2}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/auth/api/identity/c$b;

    iput-object p1, p0, Lcom/google/android/gms/auth/api/identity/c;->c:Lcom/google/android/gms/auth/api/identity/c$b;

    iput-object p3, p0, Lcom/google/android/gms/auth/api/identity/c;->d:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/auth/api/identity/c;->e:Z

    iput p5, p0, Lcom/google/android/gms/auth/api/identity/c;->f:I

    const/4 p1, 0x0

    if-nez p6, :cond_0

    invoke-static {}, Lcom/google/android/gms/auth/api/identity/c$d;->n()Lcom/google/android/gms/auth/api/identity/c$d$a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/auth/api/identity/c$d$a;->d(Z)Lcom/google/android/gms/auth/api/identity/c$d$a;

    invoke-virtual {p2}, Lcom/google/android/gms/auth/api/identity/c$d$a;->a()Lcom/google/android/gms/auth/api/identity/c$d;

    move-result-object p6

    :cond_0
    iput-object p6, p0, Lcom/google/android/gms/auth/api/identity/c;->g:Lcom/google/android/gms/auth/api/identity/c$d;

    if-nez p7, :cond_1

    invoke-static {}, Lcom/google/android/gms/auth/api/identity/c$c;->n()Lcom/google/android/gms/auth/api/identity/c$c$a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/auth/api/identity/c$c$a;->c(Z)Lcom/google/android/gms/auth/api/identity/c$c$a;

    invoke-virtual {p2}, Lcom/google/android/gms/auth/api/identity/c$c$a;->a()Lcom/google/android/gms/auth/api/identity/c$c;

    move-result-object p7

    :cond_1
    iput-object p7, p0, Lcom/google/android/gms/auth/api/identity/c;->h:Lcom/google/android/gms/auth/api/identity/c$c;

    iput-boolean p8, p0, Lcom/google/android/gms/auth/api/identity/c;->i:Z

    return-void
.end method

.method public static n()Lcom/google/android/gms/auth/api/identity/c$a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/google/android/gms/auth/api/identity/c$a;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/identity/c$a;-><init>()V

    return-object v0
.end method

.method public static x0(Lcom/google/android/gms/auth/api/identity/c;)Lcom/google/android/gms/auth/api/identity/c$a;
    .locals 2
    .param p0    # Lcom/google/android/gms/auth/api/identity/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/auth/api/identity/c;->n()Lcom/google/android/gms/auth/api/identity/c$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/c;->t()Lcom/google/android/gms/auth/api/identity/c$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/identity/c$a;->c(Lcom/google/android/gms/auth/api/identity/c$b;)Lcom/google/android/gms/auth/api/identity/c$a;

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/c;->u0()Lcom/google/android/gms/auth/api/identity/c$e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/identity/c$a;->f(Lcom/google/android/gms/auth/api/identity/c$e;)Lcom/google/android/gms/auth/api/identity/c$a;

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/c;->n0()Lcom/google/android/gms/auth/api/identity/c$d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/identity/c$a;->e(Lcom/google/android/gms/auth/api/identity/c$d;)Lcom/google/android/gms/auth/api/identity/c$a;

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/c;->b0()Lcom/google/android/gms/auth/api/identity/c$c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/identity/c$a;->d(Lcom/google/android/gms/auth/api/identity/c$c;)Lcom/google/android/gms/auth/api/identity/c$a;

    iget-boolean v1, p0, Lcom/google/android/gms/auth/api/identity/c;->e:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/identity/c$a;->b(Z)Lcom/google/android/gms/auth/api/identity/c$a;

    iget v1, p0, Lcom/google/android/gms/auth/api/identity/c;->f:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/identity/c$a;->i(I)Lcom/google/android/gms/auth/api/identity/c$a;

    iget-boolean v1, p0, Lcom/google/android/gms/auth/api/identity/c;->i:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/identity/c$a;->g(Z)Lcom/google/android/gms/auth/api/identity/c$a;

    iget-object p0, p0, Lcom/google/android/gms/auth/api/identity/c;->d:Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/auth/api/identity/c$a;->h(Ljava/lang/String;)Lcom/google/android/gms/auth/api/identity/c$a;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public b0()Lcom/google/android/gms/auth/api/identity/c$c;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/c;->h:Lcom/google/android/gms/auth/api/identity/c$c;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/google/android/gms/auth/api/identity/c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/android/gms/auth/api/identity/c;

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/c;->b:Lcom/google/android/gms/auth/api/identity/c$e;

    iget-object v2, p1, Lcom/google/android/gms/auth/api/identity/c;->b:Lcom/google/android/gms/auth/api/identity/c$e;

    invoke-static {v0, v2}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/c;->c:Lcom/google/android/gms/auth/api/identity/c$b;

    iget-object v2, p1, Lcom/google/android/gms/auth/api/identity/c;->c:Lcom/google/android/gms/auth/api/identity/c$b;

    invoke-static {v0, v2}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/c;->g:Lcom/google/android/gms/auth/api/identity/c$d;

    iget-object v2, p1, Lcom/google/android/gms/auth/api/identity/c;->g:Lcom/google/android/gms/auth/api/identity/c$d;

    invoke-static {v0, v2}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/c;->h:Lcom/google/android/gms/auth/api/identity/c$c;

    iget-object v2, p1, Lcom/google/android/gms/auth/api/identity/c;->h:Lcom/google/android/gms/auth/api/identity/c$c;

    invoke-static {v0, v2}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/c;->d:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/auth/api/identity/c;->d:Ljava/lang/String;

    invoke-static {v0, v2}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/identity/c;->e:Z

    iget-boolean v2, p1, Lcom/google/android/gms/auth/api/identity/c;->e:Z

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/google/android/gms/auth/api/identity/c;->f:I

    iget v2, p1, Lcom/google/android/gms/auth/api/identity/c;->f:I

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/identity/c;->i:Z

    iget-boolean p1, p1, Lcom/google/android/gms/auth/api/identity/c;->i:Z

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/c;->b:Lcom/google/android/gms/auth/api/identity/c$e;

    iget-object v1, p0, Lcom/google/android/gms/auth/api/identity/c;->c:Lcom/google/android/gms/auth/api/identity/c$b;

    iget-object v2, p0, Lcom/google/android/gms/auth/api/identity/c;->g:Lcom/google/android/gms/auth/api/identity/c$d;

    iget-object v3, p0, Lcom/google/android/gms/auth/api/identity/c;->h:Lcom/google/android/gms/auth/api/identity/c$c;

    iget-object v4, p0, Lcom/google/android/gms/auth/api/identity/c;->d:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/google/android/gms/auth/api/identity/c;->e:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget v6, p0, Lcom/google/android/gms/auth/api/identity/c;->f:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-boolean v7, p0, Lcom/google/android/gms/auth/api/identity/c;->i:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LG0/y;->c([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public n0()Lcom/google/android/gms/auth/api/identity/c$d;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/c;->g:Lcom/google/android/gms/auth/api/identity/c$d;

    return-object v0
.end method

.method public t()Lcom/google/android/gms/auth/api/identity/c$b;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/c;->c:Lcom/google/android/gms/auth/api/identity/c$b;

    return-object v0
.end method

.method public u0()Lcom/google/android/gms/auth/api/identity/c$e;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/c;->b:Lcom/google/android/gms/auth/api/identity/c$e;

    return-object v0
.end method

.method public v0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/identity/c;->i:Z

    return v0
.end method

.method public w0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/identity/c;->e:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, LI0/b;->a(Landroid/os/Parcel;)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/c;->u0()Lcom/google/android/gms/auth/api/identity/c$e;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, LI0/b;->S(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/c;->t()Lcom/google/android/gms/auth/api/identity/c$b;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v3}, LI0/b;->S(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/auth/api/identity/c;->d:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, LI0/b;->Y(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/c;->w0()Z

    move-result v2

    invoke-static {p1, v1, v2}, LI0/b;->g(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x5

    iget v2, p0, Lcom/google/android/gms/auth/api/identity/c;->f:I

    invoke-static {p1, v1, v2}, LI0/b;->F(Landroid/os/Parcel;II)V

    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/c;->n0()Lcom/google/android/gms/auth/api/identity/c$d;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v3}, LI0/b;->S(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/c;->b0()Lcom/google/android/gms/auth/api/identity/c$c;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v3}, LI0/b;->S(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 p2, 0x8

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/c;->v0()Z

    move-result v1

    invoke-static {p1, p2, v1}, LI0/b;->g(Landroid/os/Parcel;IZ)V

    invoke-static {p1, v0}, LI0/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
