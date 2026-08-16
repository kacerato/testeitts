.class public final LV0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build LC0/a;
.end annotation


# instance fields
.field public final a:Landroid/content/AttributionSource;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/AttributionSource;)V
    .locals 0
    .param p1    # Landroid/content/AttributionSource;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LV0/a;->a:Landroid/content/AttributionSource;

    return-void
.end method


# virtual methods
.method public a()Landroid/content/AttributionSource;
    .locals 1
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, LV0/a;->a:Landroid/content/AttributionSource;

    return-object v0
.end method
