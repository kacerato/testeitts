.class public Lfe/d$f;
.super Lae/a;
.source "SourceFile"

# interfaces
.implements LZd/i0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfe/d;
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
        "LZd/i0<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final g:Lfe/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfe/d<",
            "TK;>;"
        }
    .end annotation
.end field

.field public final synthetic h:Lfe/d;


# direct methods
.method public constructor <init>(Lfe/d;Lfe/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfe/d<",
            "TK;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lfe/d$f;->h:Lfe/d;

    invoke-direct {p0, p2}, Lae/a;-><init>(LWd/b0;)V

    iput-object p2, p0, Lfe/d$f;->g:Lfe/d;

    return-void
.end method


# virtual methods
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

    iget-object v0, p0, Lfe/d$f;->g:Lfe/d;

    iget-object v0, v0, LWd/b0;->l:[Ljava/lang/Object;

    iget v1, p0, LWd/I;->e:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public setValue(F)F
    .locals 3

    invoke-virtual {p0}, Lfe/d$f;->value()F

    move-result v0

    iget-object v1, p0, Lfe/d$f;->g:Lfe/d;

    iget-object v1, v1, Lfe/d;->t:[F

    iget v2, p0, LWd/I;->e:I

    aput p1, v1, v2

    return v0
.end method

.method public value()F
    .locals 2

    iget-object v0, p0, Lfe/d$f;->g:Lfe/d;

    iget-object v0, v0, Lfe/d;->t:[F

    iget v1, p0, LWd/I;->e:I

    aget v0, v0, v1

    return v0
.end method
