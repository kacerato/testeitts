.class public final Lpf/r0;
.super Lpf/d;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
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
.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TE;>;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lpf/d;-><init>()V

    iput-object p1, p0, Lpf/r0;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    iget v0, p0, Lpf/r0;->f:I

    return v0
.end method

.method public final e(II)V
    .locals 2

    sget-object v0, Lpf/d;->b:Lpf/d$a;

    iget-object v1, p0, Lpf/r0;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lpf/d$a;->d(III)V

    iput p1, p0, Lpf/r0;->e:I

    sub-int/2addr p2, p1

    iput p2, p0, Lpf/r0;->f:I

    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    sget-object v0, Lpf/d;->b:Lpf/d$a;

    iget v1, p0, Lpf/r0;->f:I

    invoke-virtual {v0, p1, v1}, Lpf/d$a;->b(II)V

    iget-object v0, p0, Lpf/r0;->d:Ljava/util/List;

    iget v1, p0, Lpf/r0;->e:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
