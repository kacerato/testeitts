.class public final LB2/i;
.super LB2/c;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime LB2/k;
.end annotation

.annotation runtime LI2/j;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LB2/i$b;
    }
.end annotation


# static fields
.field public static final e:J


# instance fields
.field public final b:LB2/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LB2/v<",
            "+",
            "Ljava/util/zip/Checksum;",
            ">;"
        }
    .end annotation
.end field

.field public final c:I

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(LB2/v;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LB2/v<",
            "+",
            "Ljava/util/zip/Checksum;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, LB2/c;-><init>()V

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LB2/v;

    iput-object p1, p0, LB2/i;->b:LB2/v;

    const/16 p1, 0x20

    if-eq p2, p1, :cond_1

    const/16 p1, 0x40

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    const-string v0, "bits (%s) must be either 32 or 64"

    invoke-static {p1, v0, p2}, Lw2/H;->k(ZLjava/lang/String;I)V

    iput p2, p0, LB2/i;->c:I

    invoke-static {p3}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, LB2/i;->d:Ljava/lang/String;

    return-void
.end method

.method public static synthetic l(LB2/i;)I
    .locals 0

    iget p0, p0, LB2/i;->c:I

    return p0
.end method


# virtual methods
.method public h()I
    .locals 1

    iget v0, p0, LB2/i;->c:I

    return v0
.end method

.method public i()LB2/r;
    .locals 3

    new-instance v0, LB2/i$b;

    iget-object v1, p0, LB2/i;->b:LB2/v;

    invoke-interface {v1}, Lw2/Q;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/Checksum;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, LB2/i$b;-><init>(LB2/i;Ljava/util/zip/Checksum;LB2/i$a;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LB2/i;->d:Ljava/lang/String;

    return-object v0
.end method
