.class public Lcom/google/common/collect/M1$n;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/M1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "n"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList<",
        "TE;>;",
        "Ljava/io/Serializable;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field public static final e:J


# instance fields
.field public final b:Ljava/lang/Object;
    .annotation runtime Lcom/google/common/collect/f2;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/Object;
    .annotation runtime Lcom/google/common/collect/f2;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field public final d:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;[TE;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/M1$n;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/common/collect/M1$n;->c:Ljava/lang/Object;

    invoke-static {p3}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/common/collect/M1$n;->d:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/google/common/collect/f2;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/M1$n;->size()I

    move-result v0

    invoke-static {p1, v0}, Lw2/H;->C(II)I

    iget-object v0, p0, Lcom/google/common/collect/M1$n;->d:[Ljava/lang/Object;

    add-int/lit8 p1, p1, -0x2

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/google/common/collect/M1$n;->c:Ljava/lang/Object;

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/google/common/collect/M1$n;->b:Ljava/lang/Object;

    return-object p1
.end method

.method public size()I
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/M1$n;->d:[Ljava/lang/Object;

    array-length v0, v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, LE2/f;->t(II)I

    move-result v0

    return v0
.end method
