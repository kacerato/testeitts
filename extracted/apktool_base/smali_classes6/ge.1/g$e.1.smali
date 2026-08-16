.class public Lge/g$e;
.super LWd/J;
.source "SourceFile"

# interfaces
.implements LZd/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lge/g;
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
        "LZd/i<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final e:Lge/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lge/g<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final synthetic f:Lge/g;


# direct methods
.method public constructor <init>(Lge/g;Lge/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lge/g<",
            "TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lge/g$e;->f:Lge/g;

    invoke-direct {p0, p2}, LWd/J;-><init>(LWd/c0;)V

    iput-object p2, p0, Lge/g$e;->e:Lge/g;

    return-void
.end method


# virtual methods
.method public g()V
    .locals 0

    invoke-virtual {p0}, LWd/J;->j()V

    return-void
.end method

.method public key()B
    .locals 2

    iget-object v0, p0, Lge/g$e;->e:Lge/g;

    iget-object v0, v0, LWd/e;->q:[B

    iget v1, p0, LWd/J;->d:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    invoke-virtual {p0}, Lge/g$e;->value()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lge/g$e;->e:Lge/g;

    iget-object v1, v1, Lge/g;->v:[Ljava/lang/Object;

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

    iget-object v0, p0, Lge/g$e;->e:Lge/g;

    iget-object v0, v0, Lge/g;->v:[Ljava/lang/Object;

    iget v1, p0, LWd/J;->d:I

    aget-object v0, v0, v1

    return-object v0
.end method
