.class public LA2/j$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw2/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LA2/j;->Q(LA2/j0;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lw2/t<",
        "LA2/u<",
        "TN;>;TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:LA2/j0;


# direct methods
.method public constructor <init>(LA2/j0;)V
    .locals 0

    iput-object p1, p0, LA2/j$b;->b:LA2/j0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LA2/u;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LA2/u<",
            "TN;>;)TV;"
        }
    .end annotation

    iget-object v0, p0, LA2/j$b;->b:LA2/j0;

    invoke-virtual {p1}, LA2/u;->h()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, LA2/u;->i()Ljava/lang/Object;

    move-result-object p1

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, LA2/j0;->D(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LA2/u;

    invoke-virtual {p0, p1}, LA2/j$b;->a(LA2/u;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
