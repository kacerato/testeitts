.class public final Lge/q$c$a;
.super Lae/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lge/q$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic g:Lge/q$c;


# direct methods
.method public constructor <init>(Lge/q$c;Lge/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lge/q<",
            "TK;TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lge/q$c$a;->g:Lge/q$c;

    invoke-direct {p0, p2}, Lae/a;-><init>(LWd/b0;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic k(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lge/q$c$a;->l(I)Lge/q$b;

    move-result-object p1

    return-object p1
.end method

.method public l(I)Lge/q$b;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lge/q<",
            "TK;TV;>.b;"
        }
    .end annotation

    new-instance v0, Lge/q$b;

    iget-object v1, p0, Lge/q$c$a;->g:Lge/q$c;

    iget-object v1, v1, Lge/q$c;->c:Lge/q;

    iget-object v2, v1, LWd/b0;->l:[Ljava/lang/Object;

    aget-object v2, v2, p1

    iget-object v3, v1, Lge/q;->s:[Ljava/lang/Object;

    aget-object v3, v3, p1

    invoke-direct {v0, v1, v2, v3, p1}, Lge/q$b;-><init>(Lge/q;Ljava/lang/Object;Ljava/lang/Object;I)V

    return-object v0
.end method
