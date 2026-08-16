.class public final Lpf/f$c;
.super Lpf/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpf/f;->k()Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpf/b<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lpf/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpf/f<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lpf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpf/f<",
            "TK;+TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lpf/f$c;->b:Lpf/f;

    invoke-direct {p0}, Lpf/b;-><init>()V

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    iget-object v0, p0, Lpf/f$c;->b:Lpf/f;

    invoke-virtual {v0}, Lpf/f;->size()I

    move-result v0

    return v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lpf/f$c;->b:Lpf/f;

    invoke-virtual {v0, p1}, Lpf/f;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lpf/f$c;->b:Lpf/f;

    invoke-virtual {v0}, Lpf/f;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lpf/f$c$a;

    invoke-direct {v1, v0}, Lpf/f$c$a;-><init>(Ljava/util/Iterator;)V

    return-object v1
.end method
