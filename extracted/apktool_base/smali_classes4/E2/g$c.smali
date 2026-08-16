.class public final LE2/g$c;
.super LE2/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LE2/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final a:LE2/g$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LE2/g$c;

    invoke-direct {v0}, LE2/g$c;-><init>()V

    sput-object v0, LE2/g$c;->a:LE2/g$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LE2/g;-><init>()V

    return-void
.end method


# virtual methods
.method public c()LE2/g;
    .locals 0

    return-object p0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public g()D
    .locals 2

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0
.end method

.method public h(D)D
    .locals 0

    const-wide/high16 p1, 0x7ff8000000000000L    # Double.NaN

    return-wide p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "NaN"

    return-object v0
.end method
