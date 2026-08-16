.class public final Lcom/android/tools/r8/shaking/N0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public a:Lcom/android/tools/r8/graph/d;

.field public b:Lcom/android/tools/r8/graph/d;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/tools/r8/graph/b;->a:Lcom/android/tools/r8/graph/b;

    iput-object v0, p0, Lcom/android/tools/r8/shaking/N0;->a:Lcom/android/tools/r8/graph/d;

    iput-object v0, p0, Lcom/android/tools/r8/shaking/N0;->b:Lcom/android/tools/r8/graph/d;

    return-void
.end method
