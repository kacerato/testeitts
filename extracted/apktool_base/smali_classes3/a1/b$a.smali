.class public final La1/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La1/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:La1/y;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public b:La1/c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()La1/b;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, La1/b;

    iget-object v1, p0, La1/b$a;->a:La1/y;

    const/4 v2, 0x0

    iget-object v3, p0, La1/b$a;->b:La1/c;

    invoke-direct {v0, v1, v2, v3, v2}, La1/b;-><init>(La1/y;La1/b0;La1/c;La1/d0;)V

    return-object v0
.end method

.method public b(La1/c;)La1/b$a;
    .locals 0
    .param p1    # La1/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, La1/b$a;->b:La1/c;

    return-object p0
.end method

.method public c(La1/y;)La1/b$a;
    .locals 0
    .param p1    # La1/y;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, La1/b$a;->a:La1/y;

    return-object p0
.end method
