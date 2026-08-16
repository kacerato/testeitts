.class public final Lw2/e$f;
.super Lw2/e$v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw2/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation

.annotation build Lv2/c;
.end annotation


# instance fields
.field public final d:Ljava/util/BitSet;


# direct methods
.method public constructor <init>(Ljava/util/BitSet;Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0, p2}, Lw2/e$v;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Ljava/util/BitSet;->length()I

    move-result p2

    add-int/lit8 p2, p2, 0x40

    invoke-virtual {p1}, Ljava/util/BitSet;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/BitSet;

    .line 5
    :cond_0
    iput-object p1, p0, Lw2/e$f;->d:Ljava/util/BitSet;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/BitSet;Ljava/lang/String;Lw2/e$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lw2/e$f;-><init>(Ljava/util/BitSet;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public B(C)Z
    .locals 1

    iget-object v0, p0, Lw2/e$f;->d:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    return p1
.end method

.method public Q(Ljava/util/BitSet;)V
    .locals 1

    iget-object v0, p0, Lw2/e$f;->d:Ljava/util/BitSet;

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    return-void
.end method
