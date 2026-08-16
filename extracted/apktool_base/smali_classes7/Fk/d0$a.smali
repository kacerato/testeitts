.class public LFk/d0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LFk/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "LFk/Q;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LFk/d0$a;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public varargs a([LFk/Q;)LFk/d0$a;
    .locals 1

    iget-object v0, p0, LFk/d0$a;->a:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public b()LFk/d0;
    .locals 2

    new-instance v0, LFk/d0;

    iget-object v1, p0, LFk/d0$a;->a:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, LFk/d0;-><init>(Ljava/util/List;)V

    return-object v0
.end method
