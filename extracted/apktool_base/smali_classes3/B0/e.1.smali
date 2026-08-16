.class public LB0/e;
.super LI0/a;
.source "SourceFile"


# annotations
.annotation build LC0/a;
.end annotation

.annotation build LI0/c$a;
    creator = "FeatureCreator"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "LB0/e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ljava/lang/String;
    .annotation build LI0/c$c;
        getter = "getName"
        id = 0x1
    .end annotation
.end field

.field public final c:I
    .annotation build LI0/c$c;
        getter = "getOldVersion"
        id = 0x2
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final d:J
    .annotation build LI0/c$c;
        defaultValue = "-1"
        getter = "getVersion"
        id = 0x3
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LB0/E;

    invoke-direct {v0}, LB0/E;-><init>()V

    sput-object v0, LB0/e;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build LI0/c$e;
            id = 0x1
        .end annotation

        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build LI0/c$e;
            id = 0x2
        .end annotation
    .end param
    .param p3    # J
        .annotation build LI0/c$e;
            id = 0x3
        .end annotation
    .end param
    .annotation build LI0/c$b;
    .end annotation

    .line 1
    invoke-direct {p0}, LI0/a;-><init>()V

    iput-object p1, p0, LB0/e;->b:Ljava/lang/String;

    iput p2, p0, LB0/e;->c:I

    iput-wide p3, p0, LB0/e;->d:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    .line 2
    invoke-direct {p0}, LI0/a;-><init>()V

    iput-object p1, p0, LB0/e;->b:Ljava/lang/String;

    iput-wide p2, p0, LB0/e;->d:J

    const/4 p1, -0x1

    iput p1, p0, LB0/e;->c:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, LB0/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p1, LB0/e;

    invoke-virtual {p0}, LB0/e;->n()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LB0/e;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, LB0/e;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, LB0/e;->n()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, LB0/e;->n()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, LB0/e;->t()J

    move-result-wide v2

    invoke-virtual {p1}, LB0/e;->t()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public final hashCode()I
    .locals 3

    invoke-virtual {p0}, LB0/e;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, LB0/e;->t()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LG0/y;->c([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public n()Ljava/lang/String;
    .locals 1
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, LB0/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public t()J
    .locals 4
    .annotation build LC0/a;
    .end annotation

    iget-wide v0, p0, LB0/e;->d:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    iget v0, p0, LB0/e;->c:I

    int-to-long v0, v0

    :cond_0
    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, LG0/y;->d(Ljava/lang/Object;)LG0/y$a;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {p0}, LB0/e;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LG0/y$a;->a(Ljava/lang/String;Ljava/lang/Object;)LG0/y$a;

    invoke-virtual {p0}, LB0/e;->t()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "version"

    invoke-virtual {v0, v2, v1}, LG0/y$a;->a(Ljava/lang/String;Ljava/lang/Object;)LG0/y$a;

    invoke-virtual {v0}, LG0/y$a;->toString()Ljava/lang/String;

    move-result-object v0

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

    invoke-virtual {p0}, LB0/e;->n()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v2, v0, v1}, LI0/b;->Y(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x2

    iget v1, p0, LB0/e;->c:I

    invoke-static {p1, v0, v1}, LI0/b;->F(Landroid/os/Parcel;II)V

    const/4 v0, 0x3

    invoke-virtual {p0}, LB0/e;->t()J

    move-result-wide v1

    invoke-static {p1, v0, v1, v2}, LI0/b;->K(Landroid/os/Parcel;IJ)V

    invoke-static {p1, p2}, LI0/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
