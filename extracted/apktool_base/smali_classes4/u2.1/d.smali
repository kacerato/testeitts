.class public Lu2/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu2/d$a;
    }
.end annotation


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final c:Lu2/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public synthetic constructor <init>(Lu2/d$a;Lu2/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lu2/d$a;->g(Lu2/d$a;)Z

    move-result p2

    iput-boolean p2, p0, Lu2/d;->a:Z

    invoke-static {p1}, Lu2/d$a;->f(Lu2/d$a;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lu2/d;->b:Ljava/lang/String;

    invoke-static {p1}, Lu2/d$a;->e(Lu2/d$a;)Lu2/a;

    move-result-object p1

    iput-object p1, p0, Lu2/d;->c:Lu2/a;

    return-void
.end method


# virtual methods
.method public a()Lu2/a;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    iget-object v0, p0, Lu2/d;->c:Lu2/a;

    return-object v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lu2/d;->a:Z

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    iget-object v0, p0, Lu2/d;->b:Ljava/lang/String;

    return-object v0
.end method
