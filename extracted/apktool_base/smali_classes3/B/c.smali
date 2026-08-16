.class public LB/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final n:I = 0x0

.field public static final o:I = -0x1


# instance fields
.field public a:[I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field public b:I

.field public c:I

.field public d:LB/b;

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LB/b;",
            ">;"
        }
    .end annotation
.end field

.field public f:I

.field public g:I

.field public h:Z

.field public i:I

.field public j:I

.field public k:I

.field public l:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field public m:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LB/c;->a:[I

    const/4 v0, 0x0

    iput v0, p0, LB/c;->b:I

    iput v0, p0, LB/c;->c:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LB/c;->e:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, LB/c;->m:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, LB/c;->g:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, LB/c;->c:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, LB/c;->b:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, LB/c;->f:I

    return v0
.end method
