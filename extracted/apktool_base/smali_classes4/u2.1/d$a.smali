.class public final Lu2/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu2/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public c:Lu2/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic e(Lu2/d$a;)Lu2/a;
    .locals 0

    iget-object p0, p0, Lu2/d$a;->c:Lu2/a;

    return-object p0
.end method

.method public static synthetic f(Lu2/d$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lu2/d$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic g(Lu2/d$a;)Z
    .locals 0

    iget-boolean p0, p0, Lu2/d$a;->a:Z

    return p0
.end method


# virtual methods
.method public a()Lu2/d;
    .locals 2
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    new-instance v0, Lu2/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lu2/d;-><init>(Lu2/d$a;Lu2/h;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lu2/d$a;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    iput-object p1, p0, Lu2/d$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public c(Lu2/a;)Lu2/d$a;
    .locals 0
    .param p1    # Lu2/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    iput-object p1, p0, Lu2/d$a;->c:Lu2/a;

    return-object p0
.end method

.method public d(Z)Lu2/d$a;
    .locals 0
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    iput-boolean p1, p0, Lu2/d$a;->a:Z

    return-object p0
.end method
