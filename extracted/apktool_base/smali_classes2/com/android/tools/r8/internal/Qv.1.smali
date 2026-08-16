.class public final Lcom/android/tools/r8/internal/Qv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Z


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Qv;->a:Ljava/util/ArrayList;

    iput-boolean p2, p0, Lcom/android/tools/r8/internal/Qv;->b:Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Qv;->a:Ljava/util/ArrayList;

    return-object v0
.end method
