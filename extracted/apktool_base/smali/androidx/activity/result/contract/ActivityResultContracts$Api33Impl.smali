.class public final Landroidx/activity/result/contract/ActivityResultContracts$Api33Impl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/result/contract/ActivityResultContracts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Api33Impl"
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/activity/result/contract/ActivityResultContracts$Api33Impl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$Api33Impl;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$Api33Impl;-><init>()V

    sput-object v0, Landroidx/activity/result/contract/ActivityResultContracts$Api33Impl;->INSTANCE:Landroidx/activity/result/contract/ActivityResultContracts$Api33Impl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getPickImagesMaxLimit()I
    .locals 1

    invoke-static {}, Landroid/provider/MediaStore;->getPickImagesMaxLimit()I

    move-result v0

    return v0
.end method
