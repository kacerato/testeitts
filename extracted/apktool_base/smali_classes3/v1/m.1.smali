.class public final Lv1/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/concurrent/Executor;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final b:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lv1/O;

    invoke-direct {v0}, Lv1/O;-><init>()V

    sput-object v0, Lv1/m;->a:Ljava/util/concurrent/Executor;

    new-instance v0, Lv1/N;

    invoke-direct {v0}, Lv1/N;-><init>()V

    sput-object v0, Lv1/m;->b:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
