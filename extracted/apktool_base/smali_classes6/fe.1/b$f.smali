.class public Lfe/b$f;
.super Lae/a;
.source "SourceFile"

# interfaces
.implements LZd/g0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfe/b;
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
        "LZd/g0<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final g:Lfe/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfe/b<",
            "TK;>;"
        }
    .end annotation
.end field

.field public final synthetic h:Lfe/b;


# direct methods
.method public constructor <init>(Lfe/b;Lfe/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfe/b<",
            "TK;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lfe/b$f;->h:Lfe/b;

    invoke-direct {p0, p2}, Lae/a;-><init>(LWd/b0;)V

    iput-object p2, p0, Lfe/b$f;->g:Lfe/b;

    return-void
.end method


# virtual methods
.method public a(C)C
    .locals 3

    invoke-virtual {p0}, Lfe/b$f;->value()C

    move-result v0

    iget-object v1, p0, Lfe/b$f;->g:Lfe/b;

    iget-object v1, v1, Lfe/b;->t:[C

    iget v2, p0, LWd/I;->e:I

    aput-char p1, v1, v2

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

    iget-object v0, p0, Lfe/b$f;->g:Lfe/b;

    iget-object v0, v0, LWd/b0;->l:[Ljava/lang/Object;

    iget v1, p0, LWd/I;->e:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public value()C
    .locals 2

    iget-object v0, p0, Lfe/b$f;->g:Lfe/b;

    iget-object v0, v0, Lfe/b;->t:[C

    iget v1, p0, LWd/I;->e:I

    aget-char v0, v0, v1

    return v0
.end method
