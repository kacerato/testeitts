.class public final Lz9/i$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz9/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:I

.field public final b:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resolution",
            "bordersEnabled"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lz9/i$c;->a:I

    .line 4
    iput-boolean p2, p0, Lz9/i$c;->b:Z

    return-void
.end method

.method public synthetic constructor <init>(IZLz9/i$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lz9/i$c;-><init>(IZ)V

    return-void
.end method

.method public static synthetic a(Lz9/i$c;)I
    .locals 0

    iget p0, p0, Lz9/i$c;->a:I

    return p0
.end method

.method public static synthetic b(Lz9/i$c;)Z
    .locals 0

    iget-boolean p0, p0, Lz9/i$c;->b:Z

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lz9/i$c;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lz9/i$c;

    iget v1, p0, Lz9/i$c;->a:I

    iget v3, p1, Lz9/i$c;->a:I

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lz9/i$c;->b:Z

    iget-boolean p1, p1, Lz9/i$c;->b:Z

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lz9/i$c;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lz9/i$c;->b:Z

    add-int/2addr v0, v1

    return v0
.end method
