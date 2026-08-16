.class public final Lcom/android/tools/r8/internal/Wa0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/android/tools/r8/internal/fb0;

.field public b:Lcom/android/tools/r8/internal/Va0;

.field public c:Lcom/android/tools/r8/internal/Ya0;

.field public d:Ljava/util/List;

.field public e:Lcom/android/tools/r8/internal/bb0;

.field public f:Lcom/android/tools/r8/internal/tb0;

.field public g:Lcom/android/tools/r8/internal/zb0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/i11;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/i11;-><init>()V

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/Wa0;->d:Ljava/util/List;

    return-void
.end method
