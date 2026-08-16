.class public Lcom/android/tools/r8/graph/H3$h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/graph/H3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# static fields
.field public static final b:Lcom/android/tools/r8/graph/H3$h;


# instance fields
.field final a:Lcom/android/tools/r8/graph/H3$i;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/graph/H3$h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/tools/r8/graph/H3$h;-><init>(Lcom/android/tools/r8/graph/H3$i;)V

    sput-object v0, Lcom/android/tools/r8/graph/H3$h;->b:Lcom/android/tools/r8/graph/H3$h;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/H3$i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/H3$h;->a:Lcom/android/tools/r8/graph/H3$i;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/H3$h;->a:Lcom/android/tools/r8/graph/H3$i;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public b()Lcom/android/tools/r8/graph/H3$i;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/H3$h;->a:Lcom/android/tools/r8/graph/H3$i;

    return-object v0
.end method
