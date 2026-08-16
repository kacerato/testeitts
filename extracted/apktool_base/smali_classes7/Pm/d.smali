.class public LPm/d;
.super LWm/f;
.source "SourceFile"


# instance fields
.field public final a:[LWm/d;

.field public b:I

.field public c:I

.field public d:Z


# direct methods
.method public varargs constructor <init>([LWm/d;)V
    .locals 1

    invoke-direct {p0}, LWm/f;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, LPm/d;->b:I

    iput v0, p0, LPm/d;->c:I

    const/4 v0, 0x0

    iput-boolean v0, p0, LPm/d;->d:Z

    iput-object p1, p0, LPm/d;->a:[LWm/d;

    return-void
.end method


# virtual methods
.method public a(I)LWm/f;
    .locals 0

    iput p1, p0, LPm/d;->c:I

    return-object p0
.end method

.method public b(I)LWm/f;
    .locals 0

    iput p1, p0, LPm/d;->b:I

    return-object p0
.end method

.method public e()LWm/f;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LPm/d;->d:Z

    return-object p0
.end method

.method public f()[LWm/d;
    .locals 1

    iget-object v0, p0, LPm/d;->a:[LWm/d;

    return-object v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, LPm/d;->c:I

    return v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, LPm/d;->b:I

    return v0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, LPm/d;->d:Z

    return v0
.end method
