.class public Lx0/d;
.super LI0/a;
.source "SourceFile"


# annotations
.annotation build LC0/c;
.end annotation

.annotation build LG0/F;
.end annotation

.annotation build LI0/c$a;
    creator = "ProxyRequestCreator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx0/d$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lx0/d;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:I = 0x2

.field public static final i:I

.field public static final j:I

.field public static final k:I

.field public static final l:I

.field public static final m:I

.field public static final n:I

.field public static final o:I

.field public static final p:I

.field public static final q:I


# instance fields
.field public final b:Ljava/lang/String;
    .annotation build LI0/c$c;
        id = 0x1
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final c:I
    .annotation build LI0/c$c;
        id = 0x2
    .end annotation
.end field

.field public final d:J
    .annotation build LI0/c$c;
        id = 0x3
    .end annotation
.end field

.field public final e:[B
    .annotation build LI0/c$c;
        id = 0x4
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final f:I
    .annotation build LI0/c$h;
        id = 0x3e8
    .end annotation
.end field

.field public final g:Landroid/os/Bundle;
    .annotation build LI0/c$c;
        id = 0x5
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lx0/f;

    invoke-direct {v0}, Lx0/f;-><init>()V

    sput-object v0, Lx0/d;->CREATOR:Landroid/os/Parcelable$Creator;

    const/4 v0, 0x0

    sput v0, Lx0/d;->i:I

    const/4 v0, 0x1

    sput v0, Lx0/d;->j:I

    const/4 v0, 0x2

    sput v0, Lx0/d;->k:I

    const/4 v0, 0x3

    sput v0, Lx0/d;->l:I

    const/4 v0, 0x4

    sput v0, Lx0/d;->m:I

    const/4 v0, 0x5

    sput v0, Lx0/d;->n:I

    const/4 v0, 0x6

    sput v0, Lx0/d;->o:I

    const/4 v0, 0x7

    sput v0, Lx0/d;->p:I

    sput v0, Lx0/d;->q:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IJ[BLandroid/os/Bundle;)V
    .locals 0
    .param p1    # I
        .annotation build LI0/c$e;
            id = 0x3e8
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build LI0/c$e;
            id = 0x1
        .end annotation
    .end param
    .param p3    # I
        .annotation build LI0/c$e;
            id = 0x2
        .end annotation
    .end param
    .param p4    # J
        .annotation build LI0/c$e;
            id = 0x3
        .end annotation
    .end param
    .param p6    # [B
        .annotation build LI0/c$e;
            id = 0x4
        .end annotation
    .end param
    .param p7    # Landroid/os/Bundle;
        .annotation build LI0/c$e;
            id = 0x5
        .end annotation
    .end param
    .annotation build LI0/c$b;
    .end annotation

    invoke-direct {p0}, LI0/a;-><init>()V

    iput p1, p0, Lx0/d;->f:I

    iput-object p2, p0, Lx0/d;->b:Ljava/lang/String;

    iput p3, p0, Lx0/d;->c:I

    iput-wide p4, p0, Lx0/d;->d:J

    iput-object p6, p0, Lx0/d;->e:[B

    iput-object p7, p0, Lx0/d;->g:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public n()Ljava/util/Map;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lx0/d;->g:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/BaseBundle;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iget-object v1, p0, Lx0/d;->g:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lx0/d;->g:Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v3, ""

    :cond_0
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lx0/d;->b:Ljava/lang/String;

    iget v1, p0, Lx0/d;->c:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ProxyRequest[ url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", method: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, LI0/b;->a(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Lx0/d;->b:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, LI0/b;->Y(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x2

    iget v1, p0, Lx0/d;->c:I

    invoke-static {p1, v0, v1}, LI0/b;->F(Landroid/os/Parcel;II)V

    const/4 v0, 0x3

    iget-wide v3, p0, Lx0/d;->d:J

    invoke-static {p1, v0, v3, v4}, LI0/b;->K(Landroid/os/Parcel;IJ)V

    const/4 v0, 0x4

    iget-object v1, p0, Lx0/d;->e:[B

    invoke-static {p1, v0, v1, v2}, LI0/b;->m(Landroid/os/Parcel;I[BZ)V

    const/4 v0, 0x5

    iget-object v1, p0, Lx0/d;->g:Landroid/os/Bundle;

    invoke-static {p1, v0, v1, v2}, LI0/b;->k(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    const/16 v0, 0x3e8

    iget v1, p0, Lx0/d;->f:I

    invoke-static {p1, v0, v1}, LI0/b;->F(Landroid/os/Parcel;II)V

    invoke-static {p1, p2}, LI0/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
