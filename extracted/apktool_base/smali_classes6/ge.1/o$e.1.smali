.class public Lge/o$e;
.super LWd/J;
.source "SourceFile"

# interfaces
.implements LZd/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lge/o;
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
        "LZd/r<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final e:Lge/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lge/o<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final synthetic f:Lge/o;


# direct methods
.method public constructor <init>(Lge/o;Lge/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lge/o<",
            "TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lge/o$e;->f:Lge/o;

    invoke-direct {p0, p2}, LWd/J;-><init>(LWd/c0;)V

    iput-object p2, p0, Lge/o$e;->e:Lge/o;

    return-void
.end method


# virtual methods
.method public g()V
    .locals 0

    invoke-virtual {p0}, LWd/J;->j()V

    return-void
.end method

.method public key()C
    .locals 2

    iget-object v0, p0, Lge/o$e;->e:Lge/o;

    iget-object v0, v0, LWd/m;->q:[C

    iget v1, p0, LWd/J;->d:I

    aget-char v0, v0, v1

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    invoke-virtual {p0}, Lge/o$e;->value()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lge/o$e;->e:Lge/o;

    iget-object v1, v1, Lge/o;->v:[Ljava/lang/Object;

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

    iget-object v0, p0, Lge/o$e;->e:Lge/o;

    iget-object v0, v0, Lge/o;->v:[Ljava/lang/Object;

    iget v1, p0, LWd/J;->d:I

    aget-object v0, v0, v1

    return-object v0
.end method
