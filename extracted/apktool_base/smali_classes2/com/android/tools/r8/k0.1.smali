.class public final Lcom/android/tools/r8/k0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:Ljava/nio/file/Path;

.field public c:Ljava/nio/file/Path;

.field public d:Ljava/nio/file/Path;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/k0;->a:Ljava/util/ArrayList;

    return-void
.end method
