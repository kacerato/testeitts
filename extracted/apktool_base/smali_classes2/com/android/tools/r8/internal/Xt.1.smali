.class public final Lcom/android/tools/r8/internal/Xt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/nl0;


# static fields
.field public static final a:Lcom/android/tools/r8/internal/Xt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Xt;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Xt;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/Xt;->a:Lcom/android/tools/r8/internal/Xt;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/Tt;->b:Lcom/android/tools/r8/internal/Tt;

    return-object v0
.end method
