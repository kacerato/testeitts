.class public abstract LD0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build LC0/a;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/app/Activity;)LD0/a;
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LD0/P;

    invoke-static {p0}, LD0/t;->m(Landroid/app/Activity;)LD0/t;

    move-result-object p0

    invoke-direct {v0, p0}, LD0/P;-><init>(LD0/t;)V

    return-object v0
.end method


# virtual methods
.method public abstract b(Ljava/lang/Runnable;)LD0/a;
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
