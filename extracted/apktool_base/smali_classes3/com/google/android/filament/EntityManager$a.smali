.class public Lcom/google/android/filament/EntityManager$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/EntityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/google/android/filament/EntityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/filament/EntityManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/filament/EntityManager;-><init>(Lcom/google/android/filament/i;)V

    sput-object v0, Lcom/google/android/filament/EntityManager$a;->a:Lcom/google/android/filament/EntityManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
