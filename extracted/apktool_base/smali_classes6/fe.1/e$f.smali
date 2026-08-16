.class public Lfe/e$f;
.super Lae/a;
.source "SourceFile"

# interfaces
.implements LZd/j0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfe/e;
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
        "LZd/j0<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final g:Lfe/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfe/e<",
            "TK;>;"
        }
    .end annotation
.end field

.field public final synthetic h:Lfe/e;


# direct methods
.method public constructor <init>(Lfe/e;Lfe/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfe/e<",
            "TK;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lfe/e$f;->h:Lfe/e;

    invoke-direct {p0, p2}, Lae/a;-><init>(LWd/b0;)V

    iput-object p2, p0, Lfe/e$f;->g:Lfe/e;

    return-void
.end method


# virtual methods
.method public e(I)I
    .locals 3

    invoke-virtual {p0}, Lfe/e$f;->value()I

    move-result v0

    iget-object v1, p0, Lfe/e$f;->g:Lfe/e;

    iget-object v1, v1, Lfe/e;->t:[I

    iget v2, p0, LWd/I;->e:I

    aput p1, v1, v2

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

    iget-object v0, p0, Lfe/e$f;->g:Lfe/e;

    iget-object v0, v0, LWd/b0;->l:[Ljava/lang/Object;

    iget v1, p0, LWd/I;->e:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public value()I
    .locals 2

    iget-object v0, p0, Lfe/e$f;->g:Lfe/e;

    iget-object v0, v0, Lfe/e;->t:[I

    iget v1, p0, LWd/I;->e:I

    aget v0, v0, v1

    return v0
.end method
