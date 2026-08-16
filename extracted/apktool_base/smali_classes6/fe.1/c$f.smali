.class public Lfe/c$f;
.super Lae/a;
.source "SourceFile"

# interfaces
.implements LZd/h0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfe/c;
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
        "LZd/h0<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final g:Lfe/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfe/c<",
            "TK;>;"
        }
    .end annotation
.end field

.field public final synthetic h:Lfe/c;


# direct methods
.method public constructor <init>(Lfe/c;Lfe/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfe/c<",
            "TK;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lfe/c$f;->h:Lfe/c;

    invoke-direct {p0, p2}, Lae/a;-><init>(LWd/b0;)V

    iput-object p2, p0, Lfe/c$f;->g:Lfe/c;

    return-void
.end method


# virtual methods
.method public f(D)D
    .locals 4

    invoke-virtual {p0}, Lfe/c$f;->value()D

    move-result-wide v0

    iget-object v2, p0, Lfe/c$f;->g:Lfe/c;

    iget-object v2, v2, Lfe/c;->t:[D

    iget v3, p0, LWd/I;->e:I

    aput-wide p1, v2, v3

    return-wide v0
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

    iget-object v0, p0, Lfe/c$f;->g:Lfe/c;

    iget-object v0, v0, LWd/b0;->l:[Ljava/lang/Object;

    iget v1, p0, LWd/I;->e:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public value()D
    .locals 3

    iget-object v0, p0, Lfe/c$f;->g:Lfe/c;

    iget-object v0, v0, Lfe/c;->t:[D

    iget v1, p0, LWd/I;->e:I

    aget-wide v1, v0, v1

    return-wide v1
.end method
