.class public LG0/x;
.super LI0/a;
.source "SourceFile"


# annotations
.annotation build LC0/a;
.end annotation

.annotation build LI0/c$a;
    creator = "MethodInvocationCreator"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "LG0/x;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:I
    .annotation build LI0/c$c;
        getter = "getMethodKey"
        id = 0x1
    .end annotation
.end field

.field public final c:I
    .annotation build LI0/c$c;
        getter = "getResultStatusCode"
        id = 0x2
    .end annotation
.end field

.field public final d:I
    .annotation build LI0/c$c;
        getter = "getConnectionResultStatusCode"
        id = 0x3
    .end annotation
.end field

.field public final e:J
    .annotation build LI0/c$c;
        getter = "getStartTimeMillis"
        id = 0x4
    .end annotation
.end field

.field public final f:J
    .annotation build LI0/c$c;
        getter = "getEndTimeMillis"
        id = 0x5
    .end annotation
.end field

.field public final g:Ljava/lang/String;
    .annotation build LI0/c$c;
        getter = "getCallingModuleId"
        id = 0x6
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final h:Ljava/lang/String;
    .annotation build LI0/c$c;
        getter = "getCallingEntryPoint"
        id = 0x7
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final i:I
    .annotation build LI0/c$c;
        defaultValue = "0"
        getter = "getServiceId"
        id = 0x8
    .end annotation
.end field

.field public final j:I
    .annotation build LI0/c$c;
        defaultValue = "-1"
        getter = "getLatencyMillis"
        id = 0x9
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LG0/e0;

    invoke-direct {v0}, LG0/e0;-><init>()V

    sput-object v0, LG0/x;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIJJLjava/lang/String;Ljava/lang/String;I)V
    .locals 12
    .param p8    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    .annotation build LI2/l;
        replacement = "this(methodKey, resultStatusCode, connectionResultStatusCode, startTimeMillis, endTimeMillis, callingModuleId, callingEntryPoint, serviceId, -1)"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v11, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    .line 1
    invoke-direct/range {v0 .. v11}, LG0/x;-><init>(IIIJJLjava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(IIIJJLjava/lang/String;Ljava/lang/String;II)V
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
    .param p3    # I
        .annotation build LI0/c$e;
            id = 0x3
        .end annotation
    .end param
    .param p4    # J
        .annotation build LI0/c$e;
            id = 0x4
        .end annotation
    .end param
    .param p6    # J
        .annotation build LI0/c$e;
            id = 0x5
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build LI0/c$e;
            id = 0x6
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build LI0/c$e;
            id = 0x7
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p10    # I
        .annotation build LI0/c$e;
            id = 0x8
        .end annotation
    .end param
    .param p11    # I
        .annotation build LI0/c$e;
            id = 0x9
        .end annotation
    .end param
    .annotation build LI0/c$b;
    .end annotation

    .line 2
    invoke-direct {p0}, LI0/a;-><init>()V

    iput p1, p0, LG0/x;->b:I

    iput p2, p0, LG0/x;->c:I

    iput p3, p0, LG0/x;->d:I

    iput-wide p4, p0, LG0/x;->e:J

    iput-wide p6, p0, LG0/x;->f:J

    iput-object p8, p0, LG0/x;->g:Ljava/lang/String;

    iput-object p9, p0, LG0/x;->h:Ljava/lang/String;

    iput p10, p0, LG0/x;->i:I

    iput p11, p0, LG0/x;->j:I

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget p2, p0, LG0/x;->b:I

    invoke-static {p1}, LI0/b;->a(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p1, v1, p2}, LI0/b;->F(Landroid/os/Parcel;II)V

    const/4 p2, 0x2

    iget v1, p0, LG0/x;->c:I

    invoke-static {p1, p2, v1}, LI0/b;->F(Landroid/os/Parcel;II)V

    const/4 p2, 0x3

    iget v1, p0, LG0/x;->d:I

    invoke-static {p1, p2, v1}, LI0/b;->F(Landroid/os/Parcel;II)V

    const/4 p2, 0x4

    iget-wide v1, p0, LG0/x;->e:J

    invoke-static {p1, p2, v1, v2}, LI0/b;->K(Landroid/os/Parcel;IJ)V

    const/4 p2, 0x5

    iget-wide v1, p0, LG0/x;->f:J

    invoke-static {p1, p2, v1, v2}, LI0/b;->K(Landroid/os/Parcel;IJ)V

    iget-object p2, p0, LG0/x;->g:Ljava/lang/String;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {p1, v1, p2, v2}, LI0/b;->Y(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 p2, 0x7

    iget-object v1, p0, LG0/x;->h:Ljava/lang/String;

    invoke-static {p1, p2, v1, v2}, LI0/b;->Y(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 p2, 0x8

    iget v1, p0, LG0/x;->i:I

    invoke-static {p1, p2, v1}, LI0/b;->F(Landroid/os/Parcel;II)V

    const/16 p2, 0x9

    iget v1, p0, LG0/x;->j:I

    invoke-static {p1, p2, v1}, LI0/b;->F(Landroid/os/Parcel;II)V

    invoke-static {p1, v0}, LI0/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
