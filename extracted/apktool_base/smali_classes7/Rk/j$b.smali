.class public LRk/j$b;
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
    .locals 1

    new-instance p1, LIi/Q;

    const/16 v0, 0x100

    invoke-direct {p1, v0}, LIi/Q;-><init>(I)V

    return-object p1
.end method
