.class public abstract Lcb/l$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcb/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "I:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TI;>;",
        "Ljava/util/Iterator<",
        "TI;>;"
    }
.end annotation


# instance fields
.field public b:Z

.field public final c:Lcb/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcb/l<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public d:I

.field public e:I

.field public f:Z


# direct methods
.method public constructor <init>(Lcb/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "map"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcb/l<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcb/l$d;->f:Z

    iput-object p1, p0, Lcb/l$d;->c:Lcb/l;

    invoke-virtual {p0}, Lcb/l$d;->b()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcb/l$d;->c:Lcb/l;

    iget-object v0, v0, Lcb/l;->c:[Ljava/lang/Object;

    array-length v1, v0

    :cond_0
    iget v2, p0, Lcb/l$d;->d:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcb/l$d;->d:I

    if-ge v2, v1, :cond_1

    aget-object v2, v0, v2

    if-eqz v2, :cond_0

    iput-boolean v3, p0, Lcb/l$d;->b:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcb/l$d;->b:Z

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcb/l$d;->e:I

    iput v0, p0, Lcb/l$d;->d:I

    invoke-virtual {p0}, Lcb/l$d;->a()V

    return-void
.end method

.method public remove()V
    .locals 8

    iget v0, p0, Lcb/l$d;->e:I

    if-ltz v0, :cond_3

    iget-object v1, p0, Lcb/l$d;->c:Lcb/l;

    iget-object v2, v1, Lcb/l;->c:[Ljava/lang/Object;

    iget-object v3, v1, Lcb/l;->d:[Ljava/lang/Object;

    iget v1, v1, Lcb/l;->h:I

    add-int/lit8 v4, v0, 0x1

    :goto_0
    and-int/2addr v4, v1

    aget-object v5, v2, v4

    if-eqz v5, :cond_1

    iget-object v6, p0, Lcb/l$d;->c:Lcb/l;

    invoke-virtual {v6, v5}, Lcb/l;->y(Ljava/lang/Object;)I

    move-result v6

    sub-int v7, v4, v6

    and-int/2addr v7, v1

    sub-int v6, v0, v6

    and-int/2addr v6, v1

    if-le v7, v6, :cond_0

    aput-object v5, v2, v0

    aget-object v5, v3, v4

    aput-object v5, v3, v0

    move v0, v4

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    aput-object v1, v2, v0

    aput-object v1, v3, v0

    iget-object v1, p0, Lcb/l$d;->c:Lcb/l;

    iget v2, v1, Lcb/l;->b:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcb/l;->b:I

    iget v1, p0, Lcb/l$d;->e:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcb/l$d;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcb/l$d;->d:I

    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lcb/l$d;->e:I

    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "next must be called before remove."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
