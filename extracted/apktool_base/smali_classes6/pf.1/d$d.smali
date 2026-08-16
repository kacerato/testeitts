.class public final Lpf/d$d;
.super Lpf/d;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpf/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lpf/d<",
        "TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field public final d:Lpf/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpf/d<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:I

.field public f:I


# direct methods
.method public constructor <init>(Lpf/d;II)V
    .locals 1
    .param p1    # Lpf/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpf/d<",
            "+TE;>;II)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lpf/d;-><init>()V

    iput-object p1, p0, Lpf/d$d;->d:Lpf/d;

    iput p2, p0, Lpf/d$d;->e:I

    sget-object v0, Lpf/d;->b:Lpf/d$a;

    invoke-virtual {p1}, Lpf/b;->size()I

    move-result p1

    invoke-virtual {v0, p2, p3, p1}, Lpf/d$a;->d(III)V

    sub-int/2addr p3, p2

    iput p3, p0, Lpf/d$d;->f:I

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    iget v0, p0, Lpf/d$d;->f:I

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    sget-object v0, Lpf/d;->b:Lpf/d$a;

    iget v1, p0, Lpf/d$d;->f:I

    invoke-virtual {v0, p1, v1}, Lpf/d$a;->b(II)V

    iget-object v0, p0, Lpf/d$d;->d:Lpf/d;

    iget v1, p0, Lpf/d$d;->e:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lpf/d;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public subList(II)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lpf/d;->b:Lpf/d$a;

    iget v1, p0, Lpf/d$d;->f:I

    invoke-virtual {v0, p1, p2, v1}, Lpf/d$a;->d(III)V

    new-instance v0, Lpf/d$d;

    iget-object v1, p0, Lpf/d$d;->d:Lpf/d;

    iget v2, p0, Lpf/d$d;->e:I

    add-int/2addr p1, v2

    add-int/2addr v2, p2

    invoke-direct {v0, v1, p1, v2}, Lpf/d$d;-><init>(Lpf/d;II)V

    return-object v0
.end method
