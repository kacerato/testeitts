.class public LPm/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LWm/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LPm/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:LWm/d;


# direct methods
.method public constructor <init>(LWm/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LPm/h$a;->a:LWm/d;

    return-void
.end method


# virtual methods
.method public a()LWm/d;
    .locals 1

    iget-object v0, p0, LPm/h$a;->a:LWm/d;

    return-object v0
.end method

.method public b()Ljava/lang/CharSequence;
    .locals 3

    iget-object v0, p0, LPm/h$a;->a:LWm/d;

    instance-of v1, v0, LPm/r;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, LPm/r;

    invoke-virtual {v0}, LPm/r;->h()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    return-object v0

    :cond_1
    return-object v2
.end method
