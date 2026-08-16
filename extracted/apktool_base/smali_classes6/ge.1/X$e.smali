.class public Lge/X$e;
.super LWd/J;
.source "SourceFile"

# interfaces
.implements LZd/d0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lge/X;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "LWd/J;",
        "LZd/d0<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final e:Lge/X;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lge/X<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final synthetic f:Lge/X;


# direct methods
.method public constructor <init>(Lge/X;Lge/X;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lge/X<",
            "TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lge/X$e;->f:Lge/X;

    invoke-direct {p0, p2}, LWd/J;-><init>(LWd/c0;)V

    iput-object p2, p0, Lge/X$e;->e:Lge/X;

    return-void
.end method


# virtual methods
.method public g()V
    .locals 0

    invoke-virtual {p0}, LWd/J;->j()V

    return-void
.end method

.method public key()J
    .locals 3

    iget-object v0, p0, Lge/X$e;->e:Lge/X;

    iget-object v0, v0, LWd/X;->q:[J

    iget v1, p0, LWd/J;->d:I

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    invoke-virtual {p0}, Lge/X$e;->value()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lge/X$e;->e:Lge/X;

    iget-object v1, v1, Lge/X;->v:[Ljava/lang/Object;

    iget v2, p0, LWd/J;->d:I

    aput-object p1, v1, v2

    return-object v0
.end method

.method public value()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lge/X$e;->e:Lge/X;

    iget-object v0, v0, Lge/X;->v:[Ljava/lang/Object;

    iget v1, p0, LWd/J;->d:I

    aget-object v0, v0, v1

    return-object v0
.end method
