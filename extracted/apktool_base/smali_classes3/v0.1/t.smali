.class public final Lv0/t;
.super Lcom/google/android/gms/internal/auth/c0;
.source "SourceFile"


# annotations
.annotation build LI0/c$a;
    creator = "AccountTransferMsgCreator"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lv0/t;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Ljava/util/HashMap;


# instance fields
.field public final b:Ljava/util/Set;
    .annotation build LI0/c$d;
    .end annotation
.end field

.field public final c:I
    .annotation build LI0/c$h;
        id = 0x1
    .end annotation
.end field

.field public d:Ljava/util/ArrayList;
    .annotation build LI0/c$c;
        getter = "getAuthenticatorDatas"
        id = 0x2
    .end annotation
.end field

.field public e:I
    .annotation build LI0/c$c;
        getter = "getRequestType"
        id = 0x3
    .end annotation
.end field

.field public f:Lv0/x;
    .annotation build LI0/c$c;
        getter = "getProgress"
        id = 0x4
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lv0/u;

    invoke-direct {v0}, Lv0/u;-><init>()V

    sput-object v0, Lv0/t;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lv0/t;->g:Ljava/util/HashMap;

    const/4 v1, 0x2

    const-string v2, "authenticatorData"

    const-class v3, Lv0/z;

    invoke-static {v2, v1, v3}, Lcom/google/android/gms/common/server/response/a$a;->t(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/a$a;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    const-string v2, "progress"

    const-class v3, Lv0/x;

    invoke-static {v2, v1, v3}, Lcom/google/android/gms/common/server/response/a$a;->p(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/a$a;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/auth/c0;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lv0/t;->b:Ljava/util/Set;

    .line 3
    iput v1, p0, Lv0/t;->c:I

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;ILjava/util/ArrayList;ILv0/x;)V
    .locals 0
    .param p1    # Ljava/util/Set;
        .annotation build LI0/c$d;
        .end annotation
    .end param
    .param p2    # I
        .annotation build LI0/c$e;
            id = 0x1
        .end annotation
    .end param
    .param p3    # Ljava/util/ArrayList;
        .annotation build LI0/c$e;
            id = 0x2
        .end annotation
    .end param
    .param p4    # I
        .annotation build LI0/c$e;
            id = 0x3
        .end annotation
    .end param
    .param p5    # Lv0/x;
        .annotation build LI0/c$e;
            id = 0x4
        .end annotation
    .end param
    .annotation build LI0/c$b;
    .end annotation

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/auth/c0;-><init>()V

    iput-object p1, p0, Lv0/t;->b:Ljava/util/Set;

    iput p2, p0, Lv0/t;->c:I

    iput-object p3, p0, Lv0/t;->d:Ljava/util/ArrayList;

    iput p4, p0, Lv0/t;->e:I

    iput-object p5, p0, Lv0/t;->f:Lv0/x;

    return-void
.end method


# virtual methods
.method public final b(Lcom/google/android/gms/common/server/response/a$a;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/a$a;->z0()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    iput-object p3, p0, Lv0/t;->d:Ljava/util/ArrayList;

    iget-object p2, p0, Lv0/t;->b:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p3

    filled-new-array {p1, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p3, "Field with id=%d is not a known ConcreteTypeArray type. Found %s"

    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final c(Lcom/google/android/gms/common/server/response/a$a;Ljava/lang/String;Lcom/google/android/gms/common/server/response/a;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/a$a;->z0()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    check-cast p3, Lv0/x;

    iput-object p3, p0, Lv0/t;->f:Lv0/x;

    iget-object p2, p0, Lv0/t;->b:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p3

    filled-new-array {p1, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p3, "Field with id=%d is not a known custom type. Found %s"

    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final synthetic d()Ljava/util/Map;
    .locals 1

    sget-object v0, Lv0/t;->g:Ljava/util/HashMap;

    return-object v0
.end method

.method public final e(Lcom/google/android/gms/common/server/response/a$a;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/a$a;->z0()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lv0/t;->f:Lv0/x;

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/a$a;->z0()I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown SafeParcelable id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object p1, p0, Lv0/t;->d:Ljava/util/ArrayList;

    return-object p1

    :cond_2
    iget p1, p0, Lv0/t;->c:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final g(Lcom/google/android/gms/common/server/response/a$a;)Z
    .locals 1

    iget-object v0, p0, Lv0/t;->b:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/a$a;->z0()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    invoke-static {p1}, LI0/b;->a(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lv0/t;->b:Ljava/util/Set;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lv0/t;->c:I

    invoke-static {p1, v2, v3}, LI0/b;->F(Landroid/os/Parcel;II)V

    :cond_0
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lv0/t;->d:Ljava/util/ArrayList;

    invoke-static {p1, v3, v4, v2}, LI0/b;->d0(Landroid/os/Parcel;ILjava/util/List;Z)V

    :cond_1
    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Lv0/t;->e:I

    invoke-static {p1, v3, v4}, LI0/b;->F(Landroid/os/Parcel;II)V

    :cond_2
    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lv0/t;->f:Lv0/x;

    invoke-static {p1, v3, v1, p2, v2}, LI0/b;->S(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    :cond_3
    invoke-static {p1, v0}, LI0/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
