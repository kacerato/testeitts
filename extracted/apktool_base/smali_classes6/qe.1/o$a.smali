.class public Lqe/o$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqe/m$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqe/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "LUm/v;",
            ">;",
            "Lqe/m$c<",
            "+",
            "LUm/v;",
            ">;>;"
        }
    .end annotation
.end field

.field public b:Lqe/m$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lqe/o$a;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Lqe/m$a;)Lqe/m$b;
    .locals 0
    .param p1    # Lqe/m$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lqe/o$a;->b:Lqe/m$a;

    return-object p0
.end method

.method public b(Ljava/lang/Class;Lqe/m$c;)Lqe/m$b;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lqe/m$c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "LUm/v;",
            ">(",
            "Ljava/lang/Class<",
            "TN;>;",
            "Lqe/m$c<",
            "-TN;>;)",
            "Lqe/m$b;"
        }
    .end annotation

    if-nez p2, :cond_0

    iget-object p2, p0, Lqe/o$a;->a:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lqe/o$a;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object p0
.end method

.method public c(Lqe/g;Lqe/v;)Lqe/m;
    .locals 7
    .param p1    # Lqe/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lqe/v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lqe/o$a;->b:Lqe/m$a;

    if-nez v0, :cond_0

    new-instance v0, Lqe/b;

    invoke-direct {v0}, Lqe/b;-><init>()V

    :cond_0
    move-object v6, v0

    new-instance v0, Lqe/o;

    new-instance v4, Lqe/z;

    invoke-direct {v4}, Lqe/z;-><init>()V

    iget-object v1, p0, Lqe/o$a;->a:Ljava/util/Map;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lqe/o;-><init>(Lqe/g;Lqe/v;Lqe/z;Ljava/util/Map;Lqe/m$a;)V

    return-object v0
.end method
