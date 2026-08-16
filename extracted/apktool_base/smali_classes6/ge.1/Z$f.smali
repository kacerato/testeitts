.class public Lge/Z$f;
.super Lae/a;
.source "SourceFile"

# interfaces
.implements LZd/f0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lge/Z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lae/a<",
        "TK;>;",
        "LZd/f0<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final g:Lge/Z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lge/Z<",
            "TK;>;"
        }
    .end annotation
.end field

.field public final synthetic h:Lge/Z;


# direct methods
.method public constructor <init>(Lge/Z;Lge/Z;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lge/Z<",
            "TK;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lge/Z$f;->h:Lge/Z;

    invoke-direct {p0, p2}, Lae/a;-><init>(LWd/b0;)V

    iput-object p2, p0, Lge/Z$f;->g:Lge/Z;

    return-void
.end method


# virtual methods
.method public b(B)B
    .locals 3

    invoke-virtual {p0}, Lge/Z$f;->value()B

    move-result v0

    iget-object v1, p0, Lge/Z$f;->g:Lge/Z;

    iget-object v1, v1, Lge/Z;->r:[B

    iget v2, p0, LWd/I;->e:I

    aput-byte p1, v1, v2

    return v0
.end method

.method public g()V
    .locals 0

    invoke-virtual {p0}, LWd/I;->j()V

    return-void
.end method

.method public key()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Lge/Z$f;->g:Lge/Z;

    iget-object v0, v0, LWd/b0;->l:[Ljava/lang/Object;

    iget v1, p0, LWd/I;->e:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public value()B
    .locals 2

    iget-object v0, p0, Lge/Z$f;->g:Lge/Z;

    iget-object v0, v0, Lge/Z;->r:[B

    iget v1, p0, LWd/I;->e:I

    aget-byte v0, v0, v1

    return v0
.end method
