.class public final Lcom/android/tools/r8/internal/nr0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/nr0;->b:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/tools/r8/internal/nr0;->a:Lcom/android/tools/r8/graph/y;

    return-void
.end method
