.class public LG0/K$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build LC0/a;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = LG0/K;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(LG0/P;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LG0/K;
    .locals 3
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LG0/K;

    iget-object v1, p0, LG0/K$a;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LG0/K;-><init>(Ljava/lang/String;LG0/Q;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)LG0/K$a;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    .annotation build LI2/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, LG0/K$a;->a:Ljava/lang/String;

    return-object p0
.end method
