.class public Lfe/g$e;
.super Lae/a;
.source "SourceFile"

# interfaces
.implements LZd/l0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfe/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lae/a<",
        "TK;>;",
        "LZd/l0<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final g:Lfe/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfe/g<",
            "TK;>;"
        }
    .end annotation
.end field

.field public final synthetic h:Lfe/g;


# direct methods
.method public constructor <init>(Lfe/g;Lfe/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfe/g<",
            "TK;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lfe/g$e;->h:Lfe/g;

    invoke-direct {p0, p2}, Lae/a;-><init>(LWd/b0;)V

    iput-object p2, p0, Lfe/g$e;->g:Lfe/g;

    return-void
.end method


# virtual methods
.method public c(S)S
    .locals 3

    invoke-virtual {p0}, Lfe/g$e;->value()S

    move-result v0

    iget-object v1, p0, Lfe/g$e;->g:Lfe/g;

    iget-object v1, v1, Lfe/g;->t:[S

    iget v2, p0, LWd/I;->e:I

    aput-short p1, v1, v2

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

    iget-object v0, p0, Lfe/g$e;->g:Lfe/g;

    iget-object v0, v0, LWd/b0;->l:[Ljava/lang/Object;

    iget v1, p0, LWd/I;->e:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public value()S
    .locals 2

    iget-object v0, p0, Lfe/g$e;->g:Lfe/g;

    iget-object v0, v0, Lfe/g;->t:[S

    iget v1, p0, LWd/I;->e:I

    aget-short v0, v0, v1

    return v0
.end method
