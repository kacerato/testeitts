.class public final Lge/H$c$a;
.super Lae/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lge/H$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic g:Lge/H$c;


# direct methods
.method public constructor <init>(Lge/H$c;Lge/H;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lge/H<",
            "TK;TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lge/H$c$a;->g:Lge/H$c;

    invoke-direct {p0, p2}, Lae/a;-><init>(LWd/b0;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic k(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lge/H$c$a;->l(I)Lge/H$b;

    move-result-object p1

    return-object p1
.end method

.method public l(I)Lge/H$b;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lge/H<",
            "TK;TV;>.b;"
        }
    .end annotation

    new-instance v0, Lge/H$b;

    iget-object v1, p0, Lge/H$c$a;->g:Lge/H$c;

    iget-object v1, v1, Lge/H$c;->c:Lge/H;

    iget-object v2, v1, LWd/b0;->l:[Ljava/lang/Object;

    aget-object v2, v2, p1

    iget-object v3, v1, Lge/H;->q:[Ljava/lang/Object;

    aget-object v3, v3, p1

    invoke-direct {v0, v1, v2, v3, p1}, Lge/H$b;-><init>(Lge/H;Ljava/lang/Object;Ljava/lang/Object;I)V

    return-object v0
.end method
