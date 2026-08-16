.class public LRk/j$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LRk/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LRk/j;->b()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhi/b;)LBi/D;
    .locals 3

    new-instance v0, LRk/j$y;

    new-instance v1, LIi/Q;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, LIi/Q;-><init>(I)V

    invoke-virtual {p1}, Lhi/b;->x()Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object p1

    invoke-virtual {p1}, Loh/s;->O()I

    move-result p1

    invoke-direct {v0, v1, p1}, LRk/j$y;-><init>(LBi/a0;I)V

    return-object v0
.end method
