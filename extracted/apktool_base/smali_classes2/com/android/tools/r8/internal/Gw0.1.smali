.class public final Lcom/android/tools/r8/internal/Gw0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lcom/android/tools/r8/internal/Gw0;


# instance fields
.field public a:Z

.field public final b:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Gw0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Gw0;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/Gw0;->c:Lcom/android/tools/r8/internal/Gw0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Gw0;->b:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/xw0;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Gw0;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
